import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/core/usecase/success.dart';
import 'package:coffe_diary/core/usecase/usecases.dart';
import 'package:fpdart/src/task_either.dart';

class CreateBrewRegister extends UseCase<CreateBrewRegisterParams, Success> {
  @override
  TaskEither<Failure, Success> call(CreateBrewRegisterParams param) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class CreateBrewRegisterParams extends Failure {}
