// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainListStateTearOff {
  const _$MainListStateTearOff();

  MainListInital initial() {
    return MainListInital();
  }

  MainListLoading loading() {
    return MainListLoading();
  }

  MainListDone done() {
    return MainListDone();
  }
}

/// @nodoc
const $MainListState = _$MainListStateTearOff();

/// @nodoc
mixin _$MainListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainListInital value) initial,
    required TResult Function(MainListLoading value) loading,
    required TResult Function(MainListDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainListStateCopyWith<$Res> {
  factory $MainListStateCopyWith(
          MainListState value, $Res Function(MainListState) then) =
      _$MainListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainListStateCopyWithImpl<$Res>
    implements $MainListStateCopyWith<$Res> {
  _$MainListStateCopyWithImpl(this._value, this._then);

  final MainListState _value;
  // ignore: unused_field
  final $Res Function(MainListState) _then;
}

/// @nodoc
abstract class $MainListInitalCopyWith<$Res> {
  factory $MainListInitalCopyWith(
          MainListInital value, $Res Function(MainListInital) then) =
      _$MainListInitalCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainListInitalCopyWithImpl<$Res>
    extends _$MainListStateCopyWithImpl<$Res>
    implements $MainListInitalCopyWith<$Res> {
  _$MainListInitalCopyWithImpl(
      MainListInital _value, $Res Function(MainListInital) _then)
      : super(_value, (v) => _then(v as MainListInital));

  @override
  MainListInital get _value => super._value as MainListInital;
}

/// @nodoc

class _$MainListInital implements MainListInital {
  _$MainListInital();

  @override
  String toString() {
    return 'MainListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainListInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainListInital value) initial,
    required TResult Function(MainListLoading value) loading,
    required TResult Function(MainListDone value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MainListInital implements MainListState {
  factory MainListInital() = _$MainListInital;
}

/// @nodoc
abstract class $MainListLoadingCopyWith<$Res> {
  factory $MainListLoadingCopyWith(
          MainListLoading value, $Res Function(MainListLoading) then) =
      _$MainListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainListLoadingCopyWithImpl<$Res>
    extends _$MainListStateCopyWithImpl<$Res>
    implements $MainListLoadingCopyWith<$Res> {
  _$MainListLoadingCopyWithImpl(
      MainListLoading _value, $Res Function(MainListLoading) _then)
      : super(_value, (v) => _then(v as MainListLoading));

  @override
  MainListLoading get _value => super._value as MainListLoading;
}

/// @nodoc

class _$MainListLoading implements MainListLoading {
  _$MainListLoading();

  @override
  String toString() {
    return 'MainListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainListInital value) initial,
    required TResult Function(MainListLoading value) loading,
    required TResult Function(MainListDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainListLoading implements MainListState {
  factory MainListLoading() = _$MainListLoading;
}

/// @nodoc
abstract class $MainListDoneCopyWith<$Res> {
  factory $MainListDoneCopyWith(
          MainListDone value, $Res Function(MainListDone) then) =
      _$MainListDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainListDoneCopyWithImpl<$Res> extends _$MainListStateCopyWithImpl<$Res>
    implements $MainListDoneCopyWith<$Res> {
  _$MainListDoneCopyWithImpl(
      MainListDone _value, $Res Function(MainListDone) _then)
      : super(_value, (v) => _then(v as MainListDone));

  @override
  MainListDone get _value => super._value as MainListDone;
}

/// @nodoc

class _$MainListDone implements MainListDone {
  _$MainListDone();

  @override
  String toString() {
    return 'MainListState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainListDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainListInital value) initial,
    required TResult Function(MainListLoading value) loading,
    required TResult Function(MainListDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainListInital value)? initial,
    TResult Function(MainListLoading value)? loading,
    TResult Function(MainListDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class MainListDone implements MainListState {
  factory MainListDone() = _$MainListDone;
}
