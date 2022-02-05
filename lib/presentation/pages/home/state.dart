import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class MainListState with _$MainListState {
  factory MainListState.initial() = MainListInital;
  factory MainListState.loading() = MainListLoading;
  factory MainListState.done() = MainListDone;
}
