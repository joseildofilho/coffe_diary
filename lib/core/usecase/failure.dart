import 'package:equatable/equatable.dart';

class Failures<T extends Object> extends Equatable {
  final Set<T> failures;

  const Failures([this.failures = const {}]);

  add(T t) => failures.add;

  get isEmpty => failures.isEmpty;

  get isNotEmpty => failures.isNotEmpty;

  @override
  List<T> get props => failures.toList();
}
