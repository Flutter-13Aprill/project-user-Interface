import 'package:flutter/material.dart';
import 'package:project2/core/theme/app_palette.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.widget,
  });

  final double height;
  final double width;
  final double borderRadius;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppPalette.containerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: widget,
    );
  }
}
