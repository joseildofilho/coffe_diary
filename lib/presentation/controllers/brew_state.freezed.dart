// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brew_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BrewStateTearOff {
  const _$BrewStateTearOff();

  _BrewState call({required List<Brew> brews}) {
    return _BrewState(
      brews: brews,
    );
  }
}

/// @nodoc
const $BrewState = _$BrewStateTearOff();

/// @nodoc
mixin _$BrewState {
  List<Brew> get brews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrewStateCopyWith<BrewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrewStateCopyWith<$Res> {
  factory $BrewStateCopyWith(BrewState value, $Res Function(BrewState) then) =
      _$BrewStateCopyWithImpl<$Res>;
  $Res call({List<Brew> brews});
}

/// @nodoc
class _$BrewStateCopyWithImpl<$Res> implements $BrewStateCopyWith<$Res> {
  _$BrewStateCopyWithImpl(this._value, this._then);

  final BrewState _value;
  // ignore: unused_field
  final $Res Function(BrewState) _then;

  @override
  $Res call({
    Object? brews = freezed,
  }) {
    return _then(_value.copyWith(
      brews: brews == freezed
          ? _value.brews
          : brews // ignore: cast_nullable_to_non_nullable
              as List<Brew>,
    ));
  }
}

/// @nodoc
abstract class _$BrewStateCopyWith<$Res> implements $BrewStateCopyWith<$Res> {
  factory _$BrewStateCopyWith(
          _BrewState value, $Res Function(_BrewState) then) =
      __$BrewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Brew> brews});
}

/// @nodoc
class __$BrewStateCopyWithImpl<$Res> extends _$BrewStateCopyWithImpl<$Res>
    implements _$BrewStateCopyWith<$Res> {
  __$BrewStateCopyWithImpl(_BrewState _value, $Res Function(_BrewState) _then)
      : super(_value, (v) => _then(v as _BrewState));

  @override
  _BrewState get _value => super._value as _BrewState;

  @override
  $Res call({
    Object? brews = freezed,
  }) {
    return _then(_BrewState(
      brews: brews == freezed
          ? _value.brews
          : brews // ignore: cast_nullable_to_non_nullable
              as List<Brew>,
    ));
  }
}

/// @nodoc

class _$_BrewState implements _BrewState {
  _$_BrewState({required this.brews});

  @override
  final List<Brew> brews;

  @override
  String toString() {
    return 'BrewState(brews: $brews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrewState &&
            const DeepCollectionEquality().equals(other.brews, brews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(brews));

  @JsonKey(ignore: true)
  @override
  _$BrewStateCopyWith<_BrewState> get copyWith =>
      __$BrewStateCopyWithImpl<_BrewState>(this, _$identity);
}

abstract class _BrewState implements BrewState {
  factory _BrewState({required List<Brew> brews}) = _$_BrewState;

  @override
  List<Brew> get brews;
  @override
  @JsonKey(ignore: true)
  _$BrewStateCopyWith<_BrewState> get copyWith =>
      throw _privateConstructorUsedError;
}
