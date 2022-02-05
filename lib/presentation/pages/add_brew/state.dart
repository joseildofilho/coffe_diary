import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AddBrewFormState with _$AddBrewFormState {
  factory AddBrewFormState.initial() = Initial;
  factory AddBrewFormState.editing() = Editing;
}
