import 'package:example_hack2hire/data/model/base/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'show_list_response.g.dart';

@JsonSerializable()
class ShowListReponse {
  final Meta? meta;
  final Data data;
  ShowListReponse({
    this.meta,
    required this.data,
  });

  factory ShowListReponse.fromJson(Map<String, dynamic> json) =>
      _$ShowListReponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShowListReponseToJson(this);
}
