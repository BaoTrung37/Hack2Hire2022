import 'package:example_hack2hire/data/providers/app_navigatior_provider.dart';
import 'package:example_hack2hire/domain/usecase/show_list/get_show_list_use_case.dart';
import 'package:example_hack2hire/injection/injector.dart';
import 'package:example_hack2hire/presentation/navigation/app_routes.dart';
import 'package:example_hack2hire/presentation/page/home/home_state.dart';
import 'package:example_hack2hire/presentation/page/home/widgets/show_item_card.dart';
import 'package:example_hack2hire/presentation/page/seat/seat_view.dart';
import 'package:example_hack2hire/presentation/utilities/enums/loading_status.dart';
import 'package:example_hack2hire/presentation/widget/base_app_bar/base_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_view_model.dart';

final _provider = StateNotifierProvider.autoDispose<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(
    injector.get<GetShowListUseCase>(),
  ),
);

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  HomeState get state => ref.watch(_provider);
  HomeViewModel get _viewModel => ref.read(_provider.notifier);

  @override
  void initState() {
    // TODO: implement initState
    _viewModel.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar.titleOnly(
        title: 'Show List',
      ),
      body: (state.loadingStatus == LoadingStatus.inProgress)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: _buildBodyShowList(),
            ),
    );
  }

  Widget _buildBodyShowList() {
    final list = ref.watch(_provider).showList;
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(
        children: [
          ShowItemCard(
            showEntity: ref.watch(_provider).showList[index],
            onTap: () {
              ref.watch(appNavigatorProvider).navigateTo(
                    AppRoutes.seat,
                    arguments: SeatViewArguments(
                      showId: list[index].showId,
                      showName: list[index].name,
                    ),
                  );
            },
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
      itemCount: ref.watch(_provider).showList.length,
    );
  }
}
