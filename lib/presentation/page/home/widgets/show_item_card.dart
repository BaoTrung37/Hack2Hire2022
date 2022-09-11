import 'package:example_hack2hire/data/model/show/response/show_entity.dart';
import 'package:example_hack2hire/presentation/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowItemCard extends ConsumerWidget {
  const ShowItemCard({
    required this.showEntity,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final ShowEntity showEntity;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: 90,
        decoration: BoxDecoration(
          color: context.colors.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 23,
              color: context.colors.action,
              offset: const Offset(0, 14),
            )
          ],
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: _buildImage(),
            ),
            Expanded(child: _buildInfoRight(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRight(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTitle(context),
          const SizedBox(height: 8),
          _buildStartDate(context),
        ],
      ),
    );
  }

  Widget _buildStartDate(BuildContext context) => Text(
        showEntity.startDate.toString(),
        style: AppTextStyles.textSmall.copyWith(
          color: context.colors.textSecondary,
        ),
      );

  Widget _buildTitle(BuildContext context) {
    return Text(
      showEntity.name,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.headingXSmall.copyWith(
        color: context.colors.textPrimary,
      ),
    );
  }

  Widget _buildImage() {
    return Image.network(
      showEntity.imageUrl ?? 'https://picsum.photos/200',
      // 'https://picsum.photos/200',
      fit: BoxFit.cover,
    );
  }
}
