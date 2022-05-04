import 'package:coffe_diary/domain/entities/ratio.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/usecase/failure.dart';

class Brew extends Equatable {
  final String coffeType;
  final double coffeeQuantity;
  final Ratio ratio;
  final Duration duration;
  final int score;
  final String description;

  const Brew._internal(this.coffeType, this.coffeeQuantity, this.ratio,
      this.duration, this.score, this.description);

  const Brew.initial()
      : coffeType = '',
        coffeeQuantity = 0.0,
        ratio = const Ratio.oneOne(),
        duration = Duration.zero,
        score = 0,
        description = '';

  static Either<Failures, Brew> build(
      {required String coffeType,
      required double coffeeQuantity,
      required Ratio ratio,
      required Duration duration,
      required int score,
      required String description,}) {
    List<Failure> failures = [];

    if (coffeType.isNotEmpty) {
      failures.add(CoffeeTypeIsEmpty());
    }
    if (coffeeQuantity.isNegative) {
      failures.add(QuantityCannotBeNegative());
    }
    if (score.isNegative) {
      failures.add(ScoreCannotBeNegative());
    }
    if(description.isEmpty) {
      failures.add(DescriptionIsEmpty());
    }

    if (failures.isNotEmpty) {
      return Either.left(Failures(failures));
    }


    return Either.of(Brew._internal(
      coffeType,
      coffeeQuantity,
      ratio,
      duration,
      score,
      description
    ));
  }

  @override
  List<Object?> get props => [
        coffeType,
        coffeeQuantity,
        ratio,
        duration,
        score,
      ];
}

class CoffeeTypeIsEmpty extends Failure {}

class DescriptionIsEmpty extends Failure {}

class QuantityCannotBeNegative extends Failure {}

class ScoreCannotBeNegative extends Failure {}
