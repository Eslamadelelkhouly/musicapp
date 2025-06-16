import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/style.dart';

class DiscriptionWidget extends StatelessWidget {
  const DiscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Text(
          textAlign: TextAlign.center,
          'Find Your Latest Favourite Music From Our Collection',
          style: Style.textStylemedium15,
        ),
      ),
    );
  }
}
