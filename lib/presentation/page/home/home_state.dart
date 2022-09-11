import 'package:example_hack2hire/data/model/show/response/show_entity.dart';
import 'package:example_hack2hire/presentation/utilities/enums/loading_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<ShowEntity> showList,
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
  }) = _HomeState;
}
