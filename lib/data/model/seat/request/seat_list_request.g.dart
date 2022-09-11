// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatListRequest _$SeatListRequestFromJson(Map<String, dynamic> json) =>
    SeatListRequest(
      User.fromJson(json['user'] as Map<String, dynamic>),
      (json['seat_codes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SeatListRequestToJson(SeatListRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'seat_codes': instance.seatCodeList,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['name'] as String,
      json['number_phone'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'number_phone': instance.numberPhone,
    };
