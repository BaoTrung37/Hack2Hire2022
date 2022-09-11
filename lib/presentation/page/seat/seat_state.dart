import 'package:example_hack2hire/data/model/seat/seat_entity.dart';
import 'package:example_hack2hire/presentation/utilities/enums/loading_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_state.freezed.dart';

@freezed
class SeatState with _$SeatState {
  const factory SeatState({
    @Default([]) List<SeatEntity> seatList,
    @Default([]) List<SeatEntity> seatListSelected,
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
  }) = _SeatState;
}
