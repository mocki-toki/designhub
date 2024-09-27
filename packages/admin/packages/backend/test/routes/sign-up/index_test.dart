import 'dart:convert';

import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/sign-up/index.dart' as route;

final class _MockRequestContext extends Mock implements RequestContext {}

final class _AdminAccountManager extends Mock implements AdminAccountManager {}

void main() {
  group('POST /sign-up', () {
    final uri = Uri.parse('http://localhost/sign-up');

    final context = _MockRequestContext();
    final accountManager = _AdminAccountManager();

    final accountId = const Uuid().v4obj();
    const email = 'test_email';
    final permissions = [AdminAccountPermission.adminAccounts];
    const token = 'test_token';

    final account = AdminAccountWithTotp(
      id: accountId,
      email: email,
      totp: '',
      permissions: permissions,
    );

    when(() => accountManager.create(email: email, permissions: permissions))
        .thenAnswer((_) => Future.value(account));

    when(() => accountManager.getByEmailOrNull(email))
        .thenAnswer((_) => Future.value(null));

    test('Sign up', () async {
      // Arrange
      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          null,
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          'POST',
          Uri.parse('http://localhost/sign-up'),
          body: jsonEncode({
            'email': email,
            'permissions': permissions.map((e) => e.name).toList(),
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
                'id': '$accountId',
                'email': email,
                'totp': '',
                'permissions': permissions.map((e) => e.name).toList(),
              }
            }),
          ),
        ),
      );
    });

    test('Sign up with token', () async {
      // Arrange
      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          AdminAccount(
            id: accountId,
            email: email,
            permissions: permissions,
          ),
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
            'permissions': permissions.map((e) => e.name).toList(),
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
              'failure': {'type': AlreadySignedInFailure.type}
            }),
          ),
        ),
      );
    });

    test('Sign up with conflict data', () async {
      // Arrange
      when(() => accountManager.getByEmailOrNull(email))
          .thenAnswer((_) => Future.value(account.toEntity()));

      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          null,
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          'POST',
          Uri.parse('http://localhost/sign-up'),
          body: jsonEncode({
            'email': email,
            'permissions': permissions.map((e) => e.name).toList(),
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
              'failure': {'type': AccountAlreadyExistsFailure.type}
            }),
          ),
        ),
      );
    });
  });
}
