import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:prisma_backend/client.dart';

// TODO: to extension and for TOTP model
AdminAccount _dbToAdminAccount(AdminAccountDB entity) {
  return AdminAccount(
    id: entity.id.toUuidOrNull()!,
    email: entity.email!,
    permissions: entity.permissions!
        .map((p) => AdminAccountPermission.values.byName(p.name))
        .toList(),
  );
}

class AdminAccountManager {
  AdminAccountManager(this._client);

  final PrismaAdminClient _client;

  _AdminAccountManagerOfEntity of(UuidValue id) {
    return _AdminAccountManagerOfEntity(_client, id);
  }

  Future<AdminAccountWithTotp> create({
    required String email,
    required List<AdminAccountPermission> permissions,
  }) async {
    final id = const Uuid().v4();
    final totpSecret = TOTP().generateTOTPSecret();

    await _client.adminAccountDB.create(
      data: $1(AdminAccountDBCreateInput(
        id: id,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        email: email,
        totp: TOTP().encryptSecret(totpSecret),
        permissions: $2(
          permissions.map((e) => PermissionsDB.values.byName(e.name)).toList(),
        ),
      )),
    );

    return AdminAccountWithTotp(
      id: id.toUuidOrNull()!,
      email: email,
      totp: totpSecret,
      permissions: permissions,
    );
  }

  Future<List<AdminAccount>> getAll() async {
    final accounts = await _client.adminAccountDB.findMany(
      select: AdminAccountDBSelect(
        id: true,
        email: true,
        permissions: true,
      ),
    );
    return accounts.map((entity) => _dbToAdminAccount(entity)).toList();
  }

  Future<AdminAccount?> getByCredentialsOrNull(
    String email,
    String totpCode,
  ) async {
    final adminAccount = await _client.adminAccountDB.findUnique(
      select: AdminAccountDBSelect(
        id: true,
        email: true,
        permissions: true,
        totp: true,
      ),
      where: AdminAccountDBWhereUniqueInput(email: email),
    );
    if (adminAccount == null) return null;

    final verified =
        TOTP().verifyTOTPFromEncodedSecret(adminAccount.totp!, totpCode);
    if (!verified) return null;

    return AdminAccount(
      id: adminAccount.id.toUuidOrNull()!,
      email: adminAccount.email!,
      permissions: adminAccount.permissions!
          .map((p) => AdminAccountPermission.values.byName(p.name))
          .toList(),
    );
  }

  Future<AdminAccount?> getByEmailOrNull(String email) async {
    final adminAccount = await _client.adminAccountDB.findUnique(
      select: AdminAccountDBSelect(
        id: true,
        email: true,
        permissions: true,
      ),
      where: AdminAccountDBWhereUniqueInput(email: email),
    );
    if (adminAccount == null) return null;

    return _dbToAdminAccount(adminAccount);
  }

  Future<AdminAccount?> getByIdOrNull(UuidValue id) async {
    final adminAccount = await _client.adminAccountDB.findUnique(
      select: AdminAccountDBSelect(
        id: true,
        email: true,
        permissions: true,
      ),
      where: AdminAccountDBWhereUniqueInput(id: '$id'),
    );
    if (adminAccount == null) return null;

    return _dbToAdminAccount(adminAccount);
  }
}

final class _AdminAccountManagerOfEntity {
  _AdminAccountManagerOfEntity(this._client, this._id);

  final PrismaAdminClient _client;
  final UuidValue _id;

  Future<AdminAccount> update({
    required String email,
    required List<AdminAccountPermission> permissions,
  }) async {
    final updatedAccount = await _client.adminAccountDB.update(
      select: AdminAccountDBSelect(
        id: true,
        email: true,
        permissions: true,
      ),
      where: AdminAccountDBWhereUniqueInput(id: '$_id'),
      data: $1(
        AdminAccountDBUpdateInput(
          email: $1(email),
          permissions: $2(permissions
              .map((e) => PermissionsDB.values.byName(e.name))
              .toList()),
          updatedAt: $1(DateTime.now()),
        ),
      ),
    );

    return AdminAccount(
      id: updatedAccount!.id.toUuidOrNull()!,
      email: updatedAccount.email!,
      permissions: permissions,
    );
  }

  Future<void> delete() async {
    await _client.adminAccountDB.delete(
      where: AdminAccountDBWhereUniqueInput(id: '$_id'),
    );
  }
}
