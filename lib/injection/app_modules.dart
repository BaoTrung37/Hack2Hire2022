import 'package:dio/dio.dart';
import 'package:example_hack2hire/data/repositories/seat_list/seat_list_repository.dart';
import 'package:example_hack2hire/data/repositories/show_list/show_list_repository.dart';
import 'package:example_hack2hire/domain/usecase/seat_list/get_seat_list_use_case.dart';
import 'package:example_hack2hire/domain/usecase/show_list/get_show_list_use_case.dart';
import 'package:example_hack2hire/injection/injector.dart';

import '../data/networking/api_client.dart';

class AppModules {
  static const apiBaseUrl = 'https://api.hack2hire.onemount.dev/booking/';
  static Future<void> inject() async {
    // Dio
    injector.registerLazySingleton<Dio>(() => Dio());

    // Network client
    injector.registerLazySingleton<ApiClient>(
      () {
        return ApiClient(
          injector.get<Dio>(),
          baseUrl: apiBaseUrl,
        );
      },
    );

    injector.registerLazySingleton<ShowListRepository>(
      () => ShowListRepository(
        injector.get<ApiClient>(),
      ),
    );

    injector.registerLazySingleton<GetShowListUseCase>(
      () => GetShowListUseCase(),
    );

    injector.registerLazySingleton<SeatListRepository>(
      () => SeatListRepository(
        injector.get<ApiClient>(),
      ),
    );

    injector.registerLazySingleton<GetSeatListUseCase>(
      () => GetSeatListUseCase(),
    );
  }
}
