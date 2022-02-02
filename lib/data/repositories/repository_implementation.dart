import 'package:pos_start/cour/network/network_info.dart';
import 'package:pos_start/data/datasources/local_data_source.dart';
import 'package:pos_start/data/datasources/remote_data_source.dart';
import 'package:pos_start/domain/repositories/repository.dart';

class RepositoryImplementation implements Repository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  RepositoryImplementation({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
}
