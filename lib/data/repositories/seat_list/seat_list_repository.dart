import 'package:example_hack2hire/data/model/seat/seat_entity.dart';
import 'package:example_hack2hire/data/networking/api_client.dart';
import 'package:example_hack2hire/presentation/utilities/enums/booked_status.dart';

class SeatListRepository {
  final ApiClient _apiClient;

  SeatListRepository(this._apiClient);

  Future<List<SeatEntity>> getSeatList({
    required showId,
  }) async {
    final response = await _apiClient.getSeatList(showId);
    if (response.meta?.code == 200) {
      final result = response.data;

      return result.seatList
          .map((e) => SeatEntity(
                seatId: e.seatId,
                seatCode: e.seatCode,
                showId: e.showId,
                status: e.status == BookedStatus.available.value
                    ? BookedStatus.available
                    : BookedStatus.booked,
                bookedDate: e.bookedDate,
              ))
          .toList();
    }
    return [];
  }

  // Future<void> postSeatList({
  //   required User user,
  //   required List<String> seatCodeList,
  // }) async {
  //   await _apiClient.postSeatList( SeatListRequest(
  //     user: user,
  //     seatCodeList: seatCodeList,
}
