import 'dart:convert';

import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/account/[account_id].dart' as route;

final class _MockRequestContext extends Mock implements RequestContext {}

final class _AdminAccountManager extends Mock implements AdminAccountManager {}

void main() {
  group('GET /account/[account_id]', () {
    final accountId = const Uuid().v4obj();

    const method = 'GET';
    final uri = Uri.parse('http://localhost/account/$accountId');

    final context = _MockRequestContext();
    final accountManager = _AdminAccountManager();

    final loggedAccount = AdminAccount(
      id: const Uuid().v4obj(),
      email: 'current_account_email',
      permissions: [AdminAccountPermission.adminAccounts],
    );

    final resultAccount = AdminAccount(
      id: accountId,
      email: 'test_email',
      permissions: [],
    );

    test('Get existing profile', () async {
      // Arrange
      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          loggedAccount,
          accountManager,
        ),
      );
      when(() => accountManager.getByIdOrNull(accountId))
          .thenAnswer((_) async => resultAccount);
      when(() => context.request).thenReturn(Request(method, uri));

      // Act
      final response = await route.onRequest(context, '$accountId');

      // Assert
      expect(response.statusCode, equals(HttpStatus.ok));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'data': {
                'id': '$accountId',
                'email': resultAccount.email,
                'permissions':
                    resultAccount.permissions.map((e) => e.toString()).toList(),
              }
            }),
          ),
        ),
      );
    });

    test('Get non existing profile', () async {
      // Arrange
      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          loggedAccount,
          accountManager,
        ),
      );

      when(() => accountManager.getByIdOrNull(accountId))
          .thenAnswer((_) async => null);

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
        ),
      );

      // Act
      final response = await route.onRequest(context, '$accountId');

      // Assert
      expect(response.statusCode, equals(HttpStatus.notFound));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'failure': {'type': AccountNotFoundFailure.type}
            }),
          ),
        ),
      );
    });

    test('Get without authentication', () async {
      // Arrange
      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          null,
          accountManager,
        ),
      );

      when(() => accountManager.getByIdOrNull(accountId))
          .thenAnswer((_) async => null);

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
        ),
      );

      // Act
      final response = await route.onRequest(context, '$accountId');

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

    test('Get without permission', () async {
      // Arrange
      when(() => context.read<AdminAccountManagementService>()).thenReturn(
        AdminAccountManagementEndpoint(
          AdminAccount(
            id: loggedAccount.id,
            email: loggedAccount.email,
            permissions: [],
          ),
          accountManager,
        ),
      );

      when(() => context.request).thenReturn(
        Request(
          method,
          uri,
        ),
      );

      // Act
      final response = await route.onRequest(context, '$accountId');

      // Assert
      expect(response.statusCode, equals(HttpStatus.forbidden));
      expect(
        response.body(),
        completion(
          equals(
            jsonEncode({
              'failure': {'type': AccessDeniedFailure.type}
            }),
          ),
        ),
      );
    });
  });
}
