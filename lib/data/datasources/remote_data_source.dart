import 'package:pos_start/domain/usecases/login_usecase.dart';

abstract class RemoteDataSource {
  Future<void> login({required LoginInput input});
}

class RemoteDataSourceImplementation implements RemoteDataSource {
  @override
  Future<void> login({required LoginInput input}) async {
    // throw UnimplementedError();
  }
}
