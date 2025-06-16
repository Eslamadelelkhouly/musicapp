import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/style.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'Find Your Favourite',
          style: Style.textStylebold50.copyWith(
            height: 1,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          'Music',
          style: Style.textStylebold50.copyWith(
            height: 1,
            color: ColorStyle.title,
          ),
        ),
      ],
    );
  }
}
