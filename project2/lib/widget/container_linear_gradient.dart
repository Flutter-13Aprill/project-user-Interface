import 'package:flutter/material.dart';
import 'package:project2/core/theme/app_palette.dart';

class ContainerLinearGradient extends StatelessWidget {
  const ContainerLinearGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.7, 1.0],
          colors: [
            AppPalette.gradient1.withAlpha(0),
            AppPalette.gradient1.withAlpha(100),
            AppPalette.gradient2.withAlpha(204),
          ],
        ),
      ),
    );
  }
}
