import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/brew.dart';

part 'state.freezed.dart';

@freezed
class MainListState with _$MainListState {
  factory MainListState.initial() = MainListInitial;
  factory MainListState.loading() = MainListLoading;
  factory MainListState.done({required List<Brew> brew}) = MainListDone;
}
