import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/usecase/failure.dart';

class Brew extends Equatable {
  final String description;

  const Brew._internal(this.description);

  const Brew.initial() : description = '';

  const Brew(this.description);

  static Either<Failures, Brew> build({
    required String description,
  }) {
    Failures failures = const Failures();

    if (description.isEmpty) {
      failures.add(DescriptionIsEmpty());
    }

    if (failures.isNotEmpty) {
      return Either.left(failures);
    }

    return Either.of(Brew._internal(description));
  }

  @override
  List<Object?> get props => [description];
}

class CoffeeTypeIsEmpty {}

class DescriptionIsEmpty {}

class QuantityCannotBeNegative {}

class ScoreCannotBeNegative {}
