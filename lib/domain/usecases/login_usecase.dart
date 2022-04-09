import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pos_start/cour/error/failures.dart';
import 'package:pos_start/domain/usecases/base_usecase.dart';

import '../repositories/repository.dart';

class LoginUseCase extends BaseUseCase<LoginInput, void> {
  final Repository repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, void>> execute(LoginInput input) {
    return repository.login(input: input);
  }
}

class LoginInput extends Equatable {
  final String password;

  LoginInput({required this.password});

  @override
  List<Object?> get props => [password];
}
