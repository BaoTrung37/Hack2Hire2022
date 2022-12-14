import 'package:example_hack2hire/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    Key? key,
    this.height = 0.5,
    this.thickness = 0.5,
  }) : super(key: key);

  final double thickness;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      color: context.colors.border,
    );
  }
}
