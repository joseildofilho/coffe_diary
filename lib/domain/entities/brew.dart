import 'package:equatable/equatable.dart';

class Brew extends Equatable {
  final String coffeType;
  final int score;

  const Brew({
    required this.coffeType,
    required this.score,
  });

  @override
  List<Object?> get props => [coffeType, score];
}
