// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatListResponse _$SeatListResponseFromJson(Map<String, dynamic> json) =>
    SeatListResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeatListResponseToJson(SeatListResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      total: json['total'] as int,
      seatList: (json['seat_list'] as List<dynamic>)
          .map((e) => SeatInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'total': instance.total,
      'seat_list': instance.seatList,
    };

SeatInfo _$SeatInfoFromJson(Map<String, dynamic> json) => SeatInfo(
      seatId: json['seat_id'] as String,
      seatCode: json['seat_code'] as String,
      showId: json['show_id'] as String,
      status: json['status'] as String,
      bookedDate: json['booked_date'] as int?,
    );

Map<String, dynamic> _$SeatInfoToJson(SeatInfo instance) {
  final val = <String, dynamic>{
    'seat_id': instance.seatId,
    'seat_code': instance.seatCode,
    'show_id': instance.showId,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('booked_date', instance.bookedDate);
  return val;
}
