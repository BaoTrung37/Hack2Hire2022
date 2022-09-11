import 'package:json_annotation/json_annotation.dart';

part 'show_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ShowInfo {
  String? showId;
  String? name;
  int? startDate;
  String? imageUrl;

  ShowInfo({this.showId, this.name, this.startDate, this.imageUrl});

  factory ShowInfo.fromJson(Map<String, dynamic> json) =>
      _$ShowInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ShowInfoToJson(this);
}
