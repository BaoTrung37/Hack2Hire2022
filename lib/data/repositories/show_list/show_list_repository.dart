import 'package:example_hack2hire/data/model/show/response/show_entity.dart';
import 'package:example_hack2hire/data/networking/api_client.dart';

class ShowListRepository {
  final ApiClient _apiClient;
  ShowListRepository(this._apiClient);

  Future<List<ShowEntity>> getShowList() async {
    final response = await _apiClient.getShowList();
    if (response.meta?.code == 200) {
      final result = response.data;

      return result.shows
          .map((e) => ShowEntity(
                name: e.name!,
                imageUrl: e.imageUrl!,
                showId: e.showId!,
                startDate: e.startDate!,
              ))
          .toList();
    }
    return [];
  }
}
