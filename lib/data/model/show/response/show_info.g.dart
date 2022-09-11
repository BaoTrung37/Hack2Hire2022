// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowInfo _$ShowInfoFromJson(Map<String, dynamic> json) => ShowInfo(
      showId: json['show_id'] as String?,
      name: json['name'] as String?,
      startDate: json['start_date'] as int?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ShowInfoToJson(ShowInfo instance) => <String, dynamic>{
      'show_id': instance.showId,
      'name': instance.name,
      'start_date': instance.startDate,
      'image_url': instance.imageUrl,
    };
