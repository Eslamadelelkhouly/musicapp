import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/assets_images.dart';
import 'package:musicapp/utils/core/style.dart';

class CardRecentlySong extends StatelessWidget {
  const CardRecentlySong({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 151,
          height: 151,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AssetsImages.cardimage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'Who Says',
          style: Style.textStylemedium15,
        ),
        Text(
          'Selena Gomez',
          style: Style.textStylemedium12.copyWith(
            color: Color(0xffB1AFE9),
          ),
        ),
      ],
    );
  }
}
