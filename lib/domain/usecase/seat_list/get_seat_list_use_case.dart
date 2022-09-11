import 'package:example_hack2hire/data/model/seat/seat_entity.dart';
import 'package:example_hack2hire/data/repositories/seat_list/seat_list_repository.dart';
import 'package:example_hack2hire/domain/usecase/use_case.dart';

import '../../../injection/injector.dart';

class GetSeatListUseCase extends FutureUseCase<String, List<SeatEntity>> {
  @override
  Future<List<SeatEntity>> run(String input) async {
    final result =
        injector.get<SeatListRepository>().getSeatList(showId: input);
    return result;
  }
}
