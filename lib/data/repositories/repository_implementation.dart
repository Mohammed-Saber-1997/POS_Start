import 'package:dartz/dartz.dart';
import 'package:pos_start/cour/error/exceptions.dart';
import 'package:pos_start/cour/error/failures.dart';
import 'package:pos_start/cour/network/network_info.dart';
import 'package:pos_start/data/datasources/local_data_source.dart';
import 'package:pos_start/data/datasources/remote_data_source.dart';
import 'package:pos_start/domain/repositories/repository.dart';
import 'package:pos_start/domain/usecases/login_usecase.dart';

class RepositoryImplementation implements Repository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final NetworkInfo? networkInfo;

  RepositoryImplementation({
    required this.remoteDataSource,
    required this.localDataSource,
    this.networkInfo,
  });

  @override
  Future<Either<Failure, void>> login({required LoginInput input}) async {
    try {
      var loginR = await remoteDataSource.login(input: input);
      return Right(loginR);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
