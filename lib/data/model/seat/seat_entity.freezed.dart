// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatEntity {
  String get seatId => throw _privateConstructorUsedError;
  String get seatCode => throw _privateConstructorUsedError;
  String get showId => throw _privateConstructorUsedError;
  BookedStatus get status => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  int? get bookedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatEntityCopyWith<SeatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatEntityCopyWith<$Res> {
  factory $SeatEntityCopyWith(
          SeatEntity value, $Res Function(SeatEntity) then) =
      _$SeatEntityCopyWithImpl<$Res>;
  $Res call(
      {String seatId,
      String seatCode,
      String showId,
      BookedStatus status,
      bool isSelected,
      int? bookedDate});
}

/// @nodoc
class _$SeatEntityCopyWithImpl<$Res> implements $SeatEntityCopyWith<$Res> {
  _$SeatEntityCopyWithImpl(this._value, this._then);

  final SeatEntity _value;
  // ignore: unused_field
  final $Res Function(SeatEntity) _then;

  @override
  $Res call({
    Object? seatId = freezed,
    Object? seatCode = freezed,
    Object? showId = freezed,
    Object? status = freezed,
    Object? isSelected = freezed,
    Object? bookedDate = freezed,
  }) {
    return _then(_value.copyWith(
      seatId: seatId == freezed
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      seatCode: seatCode == freezed
          ? _value.seatCode
          : seatCode // ignore: cast_nullable_to_non_nullable
              as String,
      showId: showId == freezed
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookedStatus,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      bookedDate: bookedDate == freezed
          ? _value.bookedDate
          : bookedDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SeatEntityCopyWith<$Res>
    implements $SeatEntityCopyWith<$Res> {
  factory _$$_SeatEntityCopyWith(
          _$_SeatEntity value, $Res Function(_$_SeatEntity) then) =
      __$$_SeatEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String seatId,
      String seatCode,
      String showId,
      BookedStatus status,
      bool isSelected,
      int? bookedDate});
}

/// @nodoc
class __$$_SeatEntityCopyWithImpl<$Res> extends _$SeatEntityCopyWithImpl<$Res>
    implements _$$_SeatEntityCopyWith<$Res> {
  __$$_SeatEntityCopyWithImpl(
      _$_SeatEntity _value, $Res Function(_$_SeatEntity) _then)
      : super(_value, (v) => _then(v as _$_SeatEntity));

  @override
  _$_SeatEntity get _value => super._value as _$_SeatEntity;

  @override
  $Res call({
    Object? seatId = freezed,
    Object? seatCode = freezed,
    Object? showId = freezed,
    Object? status = freezed,
    Object? isSelected = freezed,
    Object? bookedDate = freezed,
  }) {
    return _then(_$_SeatEntity(
      seatId: seatId == freezed
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      seatCode: seatCode == freezed
          ? _value.seatCode
          : seatCode // ignore: cast_nullable_to_non_nullable
              as String,
      showId: showId == freezed
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookedStatus,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      bookedDate: bookedDate == freezed
          ? _value.bookedDate
          : bookedDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SeatEntity implements _SeatEntity {
  const _$_SeatEntity(
      {required this.seatId,
      required this.seatCode,
      required this.showId,
      required this.status,
      this.isSelected = false,
      this.bookedDate = null});

  @override
  final String seatId;
  @override
  final String seatCode;
  @override
  final String showId;
  @override
  final BookedStatus status;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  @JsonKey()
  final int? bookedDate;

  @override
  String toString() {
    return 'SeatEntity(seatId: $seatId, seatCode: $seatCode, showId: $showId, status: $status, isSelected: $isSelected, bookedDate: $bookedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatEntity &&
            const DeepCollectionEquality().equals(other.seatId, seatId) &&
            const DeepCollectionEquality().equals(other.seatCode, seatCode) &&
            const DeepCollectionEquality().equals(other.showId, showId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality()
                .equals(other.bookedDate, bookedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seatId),
      const DeepCollectionEquality().hash(seatCode),
      const DeepCollectionEquality().hash(showId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(bookedDate));

  @JsonKey(ignore: true)
  @override
  _$$_SeatEntityCopyWith<_$_SeatEntity> get copyWith =>
      __$$_SeatEntityCopyWithImpl<_$_SeatEntity>(this, _$identity);
}

abstract class _SeatEntity implements SeatEntity {
  const factory _SeatEntity(
      {required final String seatId,
      required final String seatCode,
      required final String showId,
      required final BookedStatus status,
      final bool isSelected,
      final int? bookedDate}) = _$_SeatEntity;

  @override
  String get seatId;
  @override
  String get seatCode;
  @override
  String get showId;
  @override
  BookedStatus get status;
  @override
  bool get isSelected;
  @override
  int? get bookedDate;
  @override
  @JsonKey(ignore: true)
  _$$_SeatEntityCopyWith<_$_SeatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
