import 'package:example_hack2hire/data/model/base/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_list_response.g.dart';

@JsonSerializable()
class SeatListResponse {
  final Meta? meta;
  final Data data;
  SeatListResponse({
    this.meta,
    required this.data,
  });

  factory SeatListResponse.fromJson(Map<String, dynamic> json) =>
      _$SeatListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SeatListResponseToJson(this);
}

@JsonSerializable()
class Data {
  final int total;
  @JsonKey(name: 'seat_list')
  final List<SeatInfo> seatList;
  Data({
    required this.total,
    required this.seatList,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class SeatInfo {
  @JsonKey(name: 'seat_id')
  final String seatId;
  @JsonKey(name: 'seat_code')
  final String seatCode;
  @JsonKey(name: 'show_id')
  final String showId;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'booked_date', includeIfNull: false)
  final int? bookedDate;
  SeatInfo({
    required this.seatId,
    required this.seatCode,
    required this.showId,
    required this.status,
    this.bookedDate,
  });

  factory SeatInfo.fromJson(Map<String, dynamic> json) =>
      _$SeatInfoFromJson(json);
  Map<String, dynamic> toJson() => _$SeatInfoToJson(this);
}
