import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_list_request.g.dart';

@JsonSerializable()
class SeatListRequest {
  final User user;
  @JsonKey(name: 'seat_codes')
  final List<String> seatCodeList;

  factory SeatListRequest.fromJson(Map<String, dynamic> json) =>
      _$SeatListRequestFromJson(json);

  SeatListRequest(
    this.user,
    this.seatCodeList,
  );
  Map<String, dynamic> toJson() => _$SeatListRequestToJson(this);
}

@JsonSerializable()
class User {
  final String name;
  @JsonKey(name: 'number_phone')
  final String numberPhone;

  User(this.name, this.numberPhone);
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
