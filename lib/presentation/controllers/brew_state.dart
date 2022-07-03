import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/brew.dart';

part 'brew_state.freezed.dart';

@freezed
class BrewState with _$BrewState {
  factory BrewState({required List<Brew> brews}) = _BrewState;
}
