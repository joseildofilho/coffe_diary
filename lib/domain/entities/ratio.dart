import 'package:equatable/equatable.dart';

class Ratio extends Equatable {
  final String _ratio;
  const Ratio({required String ratio}) : _ratio = ratio;

  String get ratio => _ratio;

  @override
  List<Object?> get props => [_ratio];
}
