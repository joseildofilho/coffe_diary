import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/core/usecase/success.dart';
import 'package:coffe_diary/core/usecase/usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

class ValidateBrew extends UseCaseSync<ValidateBrewParams, Success> {
  @override
  IOEither<Failure, Success> call(param) {
    return IOEither.of(success);
  }
}

class ValidateBrewParams extends Equatable {
  final String coffeeName, coffeeQuantity, ratio;
  final Duration bloomTime;

  const ValidateBrewParams({
    required this.coffeeName,
    required this.coffeeQuantity,
    required this.ratio,
    required this.bloomTime,
  });

  @override
  List<Object?> get props => [coffeeName, coffeeQuantity, ratio, bloomTime];
}
