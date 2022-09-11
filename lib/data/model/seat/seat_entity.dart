// class SeatEntity {
//   final String seatId;
//   final String seatCode;
//   final String showId;
//   final String status;
//   final int? bookedDate;
//   SeatEntity({
//     required this.seatId,
//     required this.seatCode,
//     required this.showId,
//     required this.status,
//     required this.bookedDate,
//   });
// }

import 'package:example_hack2hire/presentation/utilities/enums/booked_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_entity.freezed.dart';

@freezed
class SeatEntity with _$SeatEntity {
  const factory SeatEntity({
    required String seatId,
    required String seatCode,
    required String showId,
    required BookedStatus status,
    @Default(false) bool isSelected,
    @Default(null) int? bookedDate,
  }) = _SeatEntity;
}
