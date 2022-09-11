import 'package:example_hack2hire/data/model/show/response/show_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final int total;
  final List<ShowInfo> shows;
  Data({
    required this.total,
    required this.shows,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
