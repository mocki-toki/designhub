import 'dart:convert';

import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/sign-out/index.dart' as route;

final class _MockRequestContext extends Mock implements RequestContext {}

final class _AdminAccountManager extends Mock implements AdminAccountManager {}

final class _AdminSessionManager extends Mock implements AdminSessionManager {}

void main() {
  group('POST /sign-out', () {
    final uri = Uri.parse('http://localhost/sign-out');

    final context = _MockRequestContext();
    final accountManager = _AdminAccountManager();
    final sessionManager = _AdminSessionManager();

    final accountId = const Uuid().v4obj();
    const email = 'test_email';
    const password = 'test_password';
    final permissions = [AdminAccountPermission.adminAccounts];
    const token = 'test_token';

    when(() => sessionManager.deleteByAccountId(accountId))
        .thenAnswer((_) => Future<void>(() => null));

    test('Sign Out', () async {
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
          'POST',
          uri,
          headers: {
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode({
            'email': email,
            'password': password,
          }),
        ),
      );

      // Act
      final response = await route.onRequest(context);

      // Assert
      expect(response.statusCode, equals(HttpStatus.ok));
    });

    test('Sign Out without token', () async {
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
          'POST',
          Uri.parse('http://localhost/sign-out'),
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
              'failure': {'type': NotSignedInFailure.type}
            }),
          ),
        ),
      );
    });
  });
}
