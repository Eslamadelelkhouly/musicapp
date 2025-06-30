import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/assets_images.dart';

class CardRecentlySong extends StatelessWidget {
  const CardRecentlySong({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
