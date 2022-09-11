import 'package:example_hack2hire/domain/usecase/show_list/get_show_list_use_case.dart';
import 'package:example_hack2hire/presentation/page/home/home_state.dart';
import 'package:example_hack2hire/presentation/utilities/enums/loading_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel(this._getShowListUseCase) : super(const HomeState());

  final GetShowListUseCase _getShowListUseCase;

  Future<void> initData() async {
    try {
      state = state.copyWith(
        loadingStatus: LoadingStatus.inProgress,
      );
      final showList = await _getShowListUseCase.run();
      debugPrint(showList.length.toString());
      state = state.copyWith(
        loadingStatus: LoadingStatus.success,
        showList: showList,
      );
    } on Exception catch (error) {
      state = state.copyWith(
        loadingStatus: LoadingStatus.error,
      );
      debugPrint(error.toString());
    }
  }
}
