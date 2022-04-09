import 'package:dartz/dartz.dart';
import 'package:pos_start/domain/usecases/login_usecase.dart';
import '../../cour/error/failures.dart';

abstract class Repository {
  Future<Either<Failure, void>> login({required LoginInput input});
}
