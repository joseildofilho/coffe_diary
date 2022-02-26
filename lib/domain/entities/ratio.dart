import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/usecase/failure.dart';

class Ratio extends Equatable {
  final String _ratio;
  const Ratio._internal(this._ratio);

  String get ratio => _ratio;

  static Either<Failure, Ratio> build({required String ratio}) {
    if (ratio.isEmpty) return Either.left(RatioCannotBeEmpty());

    return Either.of(Ratio._internal(ratio));
  }

  @override
  List<Object?> get props => [_ratio];
}

class RatioCannotBeEmpty extends Failure {}
