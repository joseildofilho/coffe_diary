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

  const Brew._internal(this.coffeType, this.coffeeQuantity, this.ratio,
      this.duration, this.score);

  static Either<Failures, Brew> build(
      {required String coffeType,
      required double coffeeQuantity,
      required Ratio ratio,
      required Duration duration,
      required int score}) {
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
    if (failures.isNotEmpty) {
      return Either.left(Failures(failures));
    }

    return Either.of(Brew._internal(
      coffeType,
      coffeeQuantity,
      ratio,
      duration,
      score,
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

class QuantityCannotBeNegative extends Failure {}

class ScoreCannotBeNegative extends Failure {}
