// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowListReponse _$ShowListReponseFromJson(Map<String, dynamic> json) =>
    ShowListReponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowListReponseToJson(ShowListReponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
