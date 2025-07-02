import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/assets_images.dart';
import 'package:musicapp/utils/core/style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(AssetsImages.cardimage),
        backgroundColor: Colors.transparent, 
      ),
      title: Text(
        "magenta riddim",
        style: Style.textStylemedium15,
      ),
      subtitle: Text(
        "Dj Snake",
        style: Style.textStylemedium12.copyWith(
          color: Color(0xffB1AFE9),
        ),
      ),
    );
  }
}
