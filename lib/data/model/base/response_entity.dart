import 'package:json_annotation/json_annotation.dart';

import 'meta.dart';

part 'response_entity.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseEntity<T> {
  final Meta? meta;

  @JsonKey(name: 'data')
  final T data;

  ResponseEntity({
    this.meta,
    required this.data,
  });

  factory ResponseEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseEntityFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ResponseEntityToJson(this, toJsonT);
}
