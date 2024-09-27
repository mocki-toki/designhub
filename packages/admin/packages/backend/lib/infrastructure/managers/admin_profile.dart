import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:prisma_backend/client.dart';

class AdminProfileManager {
  AdminProfileManager(this._client);

  final PrismaAdminClient _client;

  Future<AdminProfile> getByAccountIdOrCreate(UuidValue accountId) async {
    final existingProfile = await _client.adminProfileDB.findUnique(
      select: AdminProfileDBSelect(
        accountId: true,
        name: true,
      ),
      where: AdminProfileDBWhereUniqueInput(accountId: '$accountId'),
    );

    if (existingProfile != null) {
      return AdminProfile(
        accountId: existingProfile.accountId.toUuidOrNull()!,
        name: existingProfile.name!,
      );
    }

    const unnamedName = 'Unnamed Admin';

    await _client.adminProfileDB.create(
      data: $1(AdminProfileDBCreateInput(
        account: AdminAccountDBCreateNestedOneWithoutAdminProfileDBInput(
          connect: AdminAccountDBWhereUniqueInput(
            id: '$accountId',
          ),
        ),
        name: unnamedName,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      )),
    );

    return AdminProfile(
      accountId: accountId,
      name: unnamedName,
    );
  }
}
