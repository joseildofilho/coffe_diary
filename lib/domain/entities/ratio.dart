import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/usecase/failure.dart';

class Ratio extends Equatable {
  final String _ratio;
  const Ratio._internal(this._ratio);

  String get ratio => _ratio;

  static IOEither<Failure, Ratio> build({required String ratio}) {
    if (ratio.isEmpty) IOEither.left(RatioCannotBeEmpty());
    return IOEither.of(Ratio._internal(ratio));
  }

  @override
  List<Object?> get props => [_ratio];
}

class RatioCannotBeEmpty extends Failure {}
