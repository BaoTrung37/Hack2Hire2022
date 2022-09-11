import 'package:collection/collection.dart';
import 'package:example_hack2hire/data/model/seat/seat_entity.dart';
import 'package:example_hack2hire/domain/usecase/seat_list/get_seat_list_use_case.dart';
import 'package:example_hack2hire/presentation/page/seat/seat_state.dart';
import 'package:example_hack2hire/presentation/utilities/enums/booked_status.dart';
import 'package:example_hack2hire/presentation/utilities/enums/loading_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeatViewModel extends StateNotifier<SeatState> {
  SeatViewModel(
    this._getSeatListUseCase,
  ) : super(const SeatState());

  final GetSeatListUseCase _getSeatListUseCase;
  Future<void> initData({
    required String showId,
  }) async {
    try {
      state = state.copyWith(
        loadingStatus: LoadingStatus.inProgress,
      );
      final seatList = await _getSeatListUseCase.run(showId);

      state = state.copyWith(
        loadingStatus: LoadingStatus.success,
        seatList: seatList,
      );
    } on Exception catch (error) {
      state = state.copyWith(
        loadingStatus: LoadingStatus.error,
      );
      debugPrint(error.toString());
    }
  }

  bool isChecked(String seatId) {
    final seat = state.seatListSelected
        .firstWhereOrNull((element) => element.seatId == seatId);
    if (seat != null) {
      return true;
    }
    return false;
  }

  Future<void> seatSelected({
    required String seatId,
  }) async {
    final seatListNew = state.seatList
        .map((e) => e.seatId == seatId && e.status == BookedStatus.available
            ? e.copyWith(isSelected: !e.isSelected)
            : e)
        .toList();
    state = state.copyWith(
      seatList: seatListNew,
    );
  }

  Future<void> addSeatToSeatCheckedList(SeatEntity seatEntity) async {
    state = state.copyWith(
      seatListSelected: [...state.seatListSelected, seatEntity],
    );
  }

  Future<void> removeSeatToSeatCheckedList(SeatEntity seatEntity) async {
    state = state.copyWith(
      seatListSelected: state.seatListSelected
          .where((element) => element.seatId != seatEntity.seatId)
          .toList(),
    );
  }

  Future<List<SeatEntity>> getSeatSelected() async {
    final seatListSelected =
        state.seatList.where((element) => element.isSelected).toList();
    return seatListSelected;
  }
}
