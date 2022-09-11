import 'package:example_hack2hire/data/model/show/response/show_entity.dart';
import 'package:example_hack2hire/data/repositories/show_list/show_list_repository.dart';
import 'package:example_hack2hire/domain/usecase/use_case.dart';
import 'package:example_hack2hire/injection/injector.dart';

class GetShowListUseCase implements FutureOutputUseCase<List<ShowEntity>> {
  @override
  Future<List<ShowEntity>> run() async {
    final result = injector.get<ShowListRepository>().getShowList();
    return result;
  }
}
