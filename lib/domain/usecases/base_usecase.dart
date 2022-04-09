import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pos_start/cour/error/failures.dart';

abstract class BaseUseCase<Params, Out> {
  Future<Either<Failure, Out>> execute(Params input);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
