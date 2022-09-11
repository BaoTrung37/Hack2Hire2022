import 'package:example_hack2hire/data/model/seat/seat_entity.dart';
import 'package:example_hack2hire/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeatItem extends ConsumerWidget {
  const SeatItem({
    required this.onTap,
    required this.seatEntity,
    this.isAvailable = false,
    this.isSelect = false,
    Key? key,
  }) : super(key: key);

  final bool isSelect;
  final bool isAvailable;
  final VoidCallback onTap;
  final SeatEntity seatEntity;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSeatIcon(),
          const SizedBox(
            height: 8,
          ),
          _buildSeatCodeTitle(),
        ],
      ),
    );
  }

  Widget _buildSeatCodeTitle() {
    return Text(
      seatEntity.seatCode,
      style: AppTextStyles.textMedium,
    );
  }

  Widget _buildSeatIcon() {
    return Icon(
      Icons.airline_seat_recline_normal,
      color: isAvailable ? (isSelect ? Colors.green : null) : Colors.red,
      size: 40,
    );
  }
}
