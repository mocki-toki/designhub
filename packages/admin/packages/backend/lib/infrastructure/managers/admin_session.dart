import 'dart:math';

import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:prisma_backend/client.dart';

class AdminSessionManager {
  AdminSessionManager(this._client);

  final PrismaAdminClient _client;

  Future<AdminSession> create(UuidValue accountId) async {
    final token = _getRandomString();
    final expires = DateTime.now().add(const Duration(hours: 8)).toUtc();

    await _client.adminSessionDB.create(
      data: $1(
        AdminSessionDBCreateInput(
          createdAt: DateTime.now(),
          account: AdminAccountDBCreateNestedOneWithoutAdminSessionDBInput(
            connect: AdminAccountDBWhereUniqueInput(id: '$accountId'),
          ),
          token: token,
          expires: expires,
        ),
      ),
    );

    return AdminSession(
      accountId: accountId,
      token: token,
      expires: expires,
    );
  }

  Future<AdminSession?> getByTokenOrNull(Token token) async {
    final adminSession = await _client.adminSessionDB.findUnique(
      select: AdminSessionDBSelect(
        accountId: true,
        token: true,
        expires: true,
      ),
      where: AdminSessionDBWhereUniqueInput(token: '$token'),
    );
    if (adminSession == null) return null;

    return AdminSession(
      accountId: adminSession.accountId.toUuidOrNull()!,
      token: adminSession.token!,
      expires: adminSession.expires!,
    );
  }

  Future<void> deleteByAccountId(UuidValue accountId) async {
    try {
      await _client.adminSessionDB.delete(
        where: AdminSessionDBWhereUniqueInput(accountId: '$accountId'),
      );
    } catch (e) {
      if (e is PrismaClientKnownRequestError && e.code == 'P2025') return;
      rethrow;
    }
  }
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random.secure();

String _getRandomString() => String.fromCharCodes(Iterable.generate(
    50, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
