import 'package:example_hack2hire/data/model/seat/seat_entity.dart';
import 'package:example_hack2hire/presentation/resources/resources.dart';
import 'package:example_hack2hire/presentation/widget/buttons/app_button.dart';
import 'package:example_hack2hire/presentation/widget/input_text_field/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfirmBookedSeatArguments {
  final List<SeatEntity> seatListSelected;
  ConfirmBookedSeatArguments({
    required this.seatListSelected,
  });
}

void showConfirmBookedSeatDialog(
    BuildContext context, ConfirmBookedSeatArguments arguments) {
  showDialog(
    context: context,
    barrierColor: context.colors.backdropPrimary,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        backgroundColor: context.colors.surface,
        insetPadding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: ConfirmBookedSeatDialog(
          seatListSelected: arguments.seatListSelected,
        ),
      );
    },
  );
}

class ConfirmBookedSeatDialog extends ConsumerStatefulWidget {
  const ConfirmBookedSeatDialog({
    required this.seatListSelected,
    Key? key,
  }) : super(key: key);

  final List<SeatEntity> seatListSelected;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConfirmBookedSeatDialogState();
}

class _ConfirmBookedSeatDialogState
    extends ConsumerState<ConfirmBookedSeatDialog> {
  String getSeatListSelected() {
    return widget.seatListSelected.map((e) => e.seatCode).join(', ').toString();
  }

  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _phoneEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTitle(context),
          const SizedBox(height: 10),
          _buildInfomationSeatBooked(context),
          const SizedBox(height: 20),
          _buildInputName(),
          const SizedBox(height: 20),
          _buildInputPhone(),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: _buildAllowButton(context, ref)),
              const SizedBox(width: 5),
              Expanded(child: _buildNotNowButton(context, ref)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInputName() {
    return InputTextField.singleLine(
      controller: _nameEditingController,
      placeholder: 'Nhập tên của bạn',
      autocorrect: false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Vui lòng nhập tên của bạn';
        }
        return null;
      },
      keyboardType: TextInputType.name,
      onTextChange: (value) {},
    );
  }

  Widget _buildInputPhone() {
    return InputTextField.singleLine(
      controller: _phoneEditingController,
      placeholder: 'Nhập tên của bạn',
      autocorrect: false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Vui lòng nhập tên của bạn';
        }
        return null;
      },
      keyboardType: TextInputType.name,
      onTextChange: (value) {},
    );
  }

  Widget _buildInfomationSeatBooked(BuildContext context) {
    return Text(
      'Bạn đã chọn chỗ ngồi: ${getSeatListSelected()}',
      style: AppTextStyles.textMedium.copyWith(
        color: context.colors.textPrimary,
      ),
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      'Xác nhận đặt chỗ',
      style: AppTextStyles.headingSmall.copyWith(
        color: context.colors.textPrimary,
      ),
    );
  }

  Widget _buildAllowButton(BuildContext context, WidgetRef ref) {
    return AppButton(
      onButtonTap: () {
        Navigator.pop(context);
        
      },
      // isExpanded: true,
      title: 'Xác nhận',
    );
  }

  Widget _buildNotNowButton(BuildContext context, WidgetRef ref) {
    return AppButton(
      onButtonTap: () {
        Navigator.pop(context);
      },
      // isExpanded: true,
      title: 'Không',
    );
  }
}
