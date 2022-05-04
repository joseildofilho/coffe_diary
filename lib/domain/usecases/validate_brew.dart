import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/core/usecase/success.dart';
import 'package:coffe_diary/core/usecase/usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/brew.dart';

import '../entities/ratio.dart';

class ValidateBrew
    extends UseCaseSyncMultiFailure<ValidateBrewParams, Success> {

  @override
  Either<List<Failure>, Success> call(ValidateBrewParams param) {
    return Brew.build(
      coffeeQuantity: 0.0,
      coffeType: 'arabica',
      ratio: const Ratio.oneOne(),
      duration: Duration.zero,
      score: 0,
      description: param.description ?? 'No Description',
    ).map((_) => success).mapLeft((fails) => fails.failures);
  }
}

class ValidateBrewParams extends Equatable {
  final String? description;

  const ValidateBrewParams({this.description});

  @override
  List<Object?> get props => [description];
}
