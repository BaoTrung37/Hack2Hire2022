import 'package:example_hack2hire/domain/usecase/seat_list/get_seat_list_use_case.dart';
import 'package:example_hack2hire/injection/injector.dart';
import 'package:example_hack2hire/presentation/page/seat/seat_state.dart';
import 'package:example_hack2hire/presentation/page/seat/seat_view_model.dart';
import 'package:example_hack2hire/presentation/page/seat/show_confirm_booked_seat_dialog.dart';
import 'package:example_hack2hire/presentation/page/seat/widgets/seat_item.dart';
import 'package:example_hack2hire/presentation/utilities/enums/booked_status.dart';
import 'package:example_hack2hire/presentation/utilities/enums/loading_status.dart';
import 'package:example_hack2hire/presentation/widget/base_app_bar/base_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _provider = StateNotifierProvider.autoDispose<SeatViewModel, SeatState>(
  (ref) => SeatViewModel(
    injector.get<GetSeatListUseCase>(),
  ),
);

class SeatViewArguments {
  final String showId;
  final String showName;
  SeatViewArguments({
    required this.showId,
    required this.showName,
  });
}

class SeatView extends ConsumerStatefulWidget {
  const SeatView({
    required this.showId,
    required this.showName,
    Key? key,
  }) : super(key: key);

  final String showId;
  final String showName;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SeateViewState();
}

class _SeateViewState extends ConsumerState<SeatView> {
  SeatState get state => ref.watch(_provider);
  SeatViewModel get _viewModel => ref.read(_provider.notifier);

  @override
  void initState() {
    _viewModel.initData(
      showId: widget.showId,
    );
    super.initState();
  }

  void selectSeat({
    required String seatId,
  }) {
    _viewModel.seatSelected(
      seatId: seatId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.titleAndBackButton(
        title: widget.showName,
        widgets: [
          IconButton(
            icon: const Icon(Icons.near_me),
            onPressed: () {
              showConfirmBookedSeatDialog(
                context,
                ConfirmBookedSeatArguments(
                  seatListSelected: ref.watch(_provider).seatListSelected,
                ),
              );
            },
          ),
        ],
      ),
      body: (state.loadingStatus == LoadingStatus.inProgress)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _buildBodySeatList(),
    );
  }

  Widget _buildBodySeatList() {
    final seatList = ref.watch(_provider).seatList;
    return GridView.builder(
      shrinkWrap: true,
      itemCount: seatList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
      ),
      itemBuilder: (context, index) => SeatItem(
        onTap: () {
          if (_viewModel.isChecked(seatList[index].seatId) == true) {
            _viewModel.removeSeatToSeatCheckedList(seatList[index]);
          } else {
            _viewModel.addSeatToSeatCheckedList(seatList[index]);
          }
          selectSeat(seatId: seatList[index].seatId);
        },
        isAvailable: seatList[index].status == BookedStatus.available,
        isSelect: seatList[index].isSelected,
        seatEntity: seatList[index],
      ),
    );
  }
}
