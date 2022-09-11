// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatState {
  List<SeatEntity> get seatList => throw _privateConstructorUsedError;
  List<SeatEntity> get seatListSelected => throw _privateConstructorUsedError;
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatStateCopyWith<SeatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatStateCopyWith<$Res> {
  factory $SeatStateCopyWith(SeatState value, $Res Function(SeatState) then) =
      _$SeatStateCopyWithImpl<$Res>;
  $Res call(
      {List<SeatEntity> seatList,
      List<SeatEntity> seatListSelected,
      LoadingStatus loadingStatus});
}

/// @nodoc
class _$SeatStateCopyWithImpl<$Res> implements $SeatStateCopyWith<$Res> {
  _$SeatStateCopyWithImpl(this._value, this._then);

  final SeatState _value;
  // ignore: unused_field
  final $Res Function(SeatState) _then;

  @override
  $Res call({
    Object? seatList = freezed,
    Object? seatListSelected = freezed,
    Object? loadingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      seatList: seatList == freezed
          ? _value.seatList
          : seatList // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>,
      seatListSelected: seatListSelected == freezed
          ? _value.seatListSelected
          : seatListSelected // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>,
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_SeatStateCopyWith<$Res> implements $SeatStateCopyWith<$Res> {
  factory _$$_SeatStateCopyWith(
          _$_SeatState value, $Res Function(_$_SeatState) then) =
      __$$_SeatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SeatEntity> seatList,
      List<SeatEntity> seatListSelected,
      LoadingStatus loadingStatus});
}

/// @nodoc
class __$$_SeatStateCopyWithImpl<$Res> extends _$SeatStateCopyWithImpl<$Res>
    implements _$$_SeatStateCopyWith<$Res> {
  __$$_SeatStateCopyWithImpl(
      _$_SeatState _value, $Res Function(_$_SeatState) _then)
      : super(_value, (v) => _then(v as _$_SeatState));

  @override
  _$_SeatState get _value => super._value as _$_SeatState;

  @override
  $Res call({
    Object? seatList = freezed,
    Object? seatListSelected = freezed,
    Object? loadingStatus = freezed,
  }) {
    return _then(_$_SeatState(
      seatList: seatList == freezed
          ? _value._seatList
          : seatList // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>,
      seatListSelected: seatListSelected == freezed
          ? _value._seatListSelected
          : seatListSelected // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>,
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$_SeatState implements _SeatState {
  const _$_SeatState(
      {final List<SeatEntity> seatList = const [],
      final List<SeatEntity> seatListSelected = const [],
      this.loadingStatus = LoadingStatus.initial})
      : _seatList = seatList,
        _seatListSelected = seatListSelected;

  final List<SeatEntity> _seatList;
  @override
  @JsonKey()
  List<SeatEntity> get seatList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatList);
  }

  final List<SeatEntity> _seatListSelected;
  @override
  @JsonKey()
  List<SeatEntity> get seatListSelected {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatListSelected);
  }

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;

  @override
  String toString() {
    return 'SeatState(seatList: $seatList, seatListSelected: $seatListSelected, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatState &&
            const DeepCollectionEquality().equals(other._seatList, _seatList) &&
            const DeepCollectionEquality()
                .equals(other._seatListSelected, _seatListSelected) &&
            const DeepCollectionEquality()
                .equals(other.loadingStatus, loadingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_seatList),
      const DeepCollectionEquality().hash(_seatListSelected),
      const DeepCollectionEquality().hash(loadingStatus));

  @JsonKey(ignore: true)
  @override
  _$$_SeatStateCopyWith<_$_SeatState> get copyWith =>
      __$$_SeatStateCopyWithImpl<_$_SeatState>(this, _$identity);
}

abstract class _SeatState implements SeatState {
  const factory _SeatState(
      {final List<SeatEntity> seatList,
      final List<SeatEntity> seatListSelected,
      final LoadingStatus loadingStatus}) = _$_SeatState;

  @override
  List<SeatEntity> get seatList;
  @override
  List<SeatEntity> get seatListSelected;
  @override
  LoadingStatus get loadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SeatStateCopyWith<_$_SeatState> get copyWith =>
      throw _privateConstructorUsedError;
}
