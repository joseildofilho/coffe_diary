import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/core/usecase/usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/brew.dart';

class CreateBrewRegister extends UseCase<CreateBrewRegisterParams, List<Brew>> {
  List<Brew> _brews = [];

  @override
  TaskEither<Failures, List<Brew>> call(CreateBrewRegisterParams param) =>
      _buildBrew(param).flatMap((brew) {
        _brews = [..._brews, brew];
        print(_brews);
        return right(_brews);
      }).toTaskEither();

  Either<Failures, Brew> _buildBrew(CreateBrewRegisterParams param) {
    return Brew.build(description: param.description);
  }
}

class CreateBrewRegisterParams extends Equatable {
  final String description;

  const CreateBrewRegisterParams({
    required this.description,
  });

  @override
  List<Object?> get props => [description];
}

class InvalidCoffeeName {
  const InvalidCoffeeName();
}

class InvalidCoffeQuantity {
  const InvalidCoffeQuantity();
}
