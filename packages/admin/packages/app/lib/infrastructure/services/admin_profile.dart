import 'package:app/domain.dart';
import 'package:app/infrastructure.dart';

final class AdminProfileServiceImpl implements AdminProfileService {
  AdminProfileServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<DataOrFailure<AdminProfile>> getProfile({
    required UuidValue accountId,
  }) {
    return _dio
        .get('/profile/$accountId')
        .toData((r) => AdminProfile.fromJson(r));
  }
}
