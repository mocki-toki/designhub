import 'dart:convert';

import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/sign-in/index.dart' as route;

final class _MockRequestContext extends Mock implements RequestContext {}

final class _AdminAccountManager extends Mock implements AdminAccountManager {}

final class _AdminSessionManager extends Mock implements AdminSessionManager {}

/// TODO: totp никак не проверяется, нужно сделать фейки для менеджеров
void main() {
  group('POST /sign-in', () {
    const method = 'POST';
    final uri = Uri.parse('http://localhost/sign-in');

    final context = _MockRequestContext();
    final accountManager = _AdminAccountManager();
    final sessionManager = _AdminSessionManager();

    final accountId = const Uuid().v4obj();
    const email = 'test_email';
    const totp_code = 'test_code';
    final permissions = [AdminAccountPermission.adminAccounts];
    const token = 'test_token';
    final expires = DateTime.now().add(const Duration(hours: 8));

    when(() => accountManager.getByCredentialsOrNull(email, totp_code))
        .thenAnswer(
      (_) => Future.value(
        AdminAccount(
          id: accountId,
          email: email,
          permissions: permissions,
        ),
      ),
    );

    when(() => sessionManager.deleteByAccountId(accountId)).thenAnswer(
      (_) => Future.value(
        AdminAccount(
          id: accountId,
          email: email,
          permissions: permissions,
        ),
      ),
    );

    when(() => sessionManager.create(accountId)).thenAnswer(
      (_) => Future.value(
        AdminSession(
          accountId: accountId,
          token: token,
          expires: expires,
        ),
      ),
    );

    test('Sign In without totp code', () async {
      // Arrange
      when(() => context.read<AdminSessionService>()).thenReturn(
        AdminSessionEndpoint(
          null,
          sessionManager,
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
          body: jsonEncode({
            'email': email,
          }),
        ),
      );

      // Act
      final response = await route.onRequest(context);

      // Assert
      expect(response.statusCode, equals(HttpStatus.badRequest));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'failure': {
                'type': 'missing_parameters_failure',
                'parameters': ['totp_code'],
              },
            }),
          ),
        ),
      );
    });

    test('Sign In without token', () async {
      // Arrange
      when(() => context.read<AdminSessionService>()).thenReturn(
        AdminSessionEndpoint(
          null,
          sessionManager,
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
          body: jsonEncode({
            'email': email,
            'totp_code': totp_code,
          }),
        ),
      );

      // Act
      final response = await route.onRequest(context);

      // Assert
      expect(response.statusCode, equals(HttpStatus.ok));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'data': {
                'account_id': '$accountId',
                'token': token,
                'expires': expires.toIso8601String(),
              }
            }),
          ),
        ),
      );
    });

    test('Sign In with token', () async {
      // Arrange
      when(() => context.read<AdminSessionService>()).thenReturn(
        AdminSessionEndpoint(
          AdminAccount(
            id: accountId,
            email: email,
            permissions: permissions,
          ),
          sessionManager,
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
          headers: {
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode({
            'email': email,
            'totp_code': totp_code,
          }),
        ),
      );

      // Act
      final response = await route.onRequest(context);

      // Assert
      expect(response.statusCode, equals(HttpStatus.conflict));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'failure': {
                'type': AlreadySignedInFailure.type,
              },
            }),
          ),
        ),
      );
    });

    test('Sign In with invalid credentials', () async {
      // Arrange
      when(() => accountManager.getByCredentialsOrNull(email, totp_code))
          .thenAnswer((_) => Future.value(null));

      when(() => context.read<AdminSessionService>()).thenReturn(
        AdminSessionEndpoint(
          null,
          sessionManager,
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
          body: jsonEncode({
            'email': email,
            'totp_code': totp_code,
          }),
        ),
      );

      // Act
      final response = await route.onRequest(context);

      // Assert
      expect(response.statusCode, equals(HttpStatus.unauthorized));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'failure': {
                'type': InvalidCredentialsFailure.type,
              },
            }),
          ),
        ),
      );
    });
  });
}
