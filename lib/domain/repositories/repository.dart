import 'package:dartz/dartz.dart';
import '../../cour/error/failures.dart';

abstract class Repository {
  Future<Either<Failure, String>> getServerTime(int number);
}
