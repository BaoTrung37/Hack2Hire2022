import 'package:dio/dio.dart';
import 'package:example_hack2hire/data/model/seat/request/seat_list_request.dart';
import 'package:example_hack2hire/data/model/seat/seat_list_response.dart';
import 'package:example_hack2hire/data/model/show/response/show_list_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/shows')
  Future<ShowListReponse> getShowList();

  @GET('/shows/{show_id}/seats')
  Future<SeatListResponse> getSeatList(
    @Path('show_id') String showId,
  );

  @POST('/shows/{show_id}/reservations')
  Future<void> postSeatList(
    @Path('show_id') String showId,
    @Body() SeatListRequest body,
  );
}
