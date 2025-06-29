import 'package:flutter/material.dart';
import 'package:musicapp/utils/constant.dart';
import 'package:musicapp/utils/core/color_style.dart';

class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({
    super.key, required this.onTab,
  });
  final ValueChanged<int> onTab ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTab,
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorStyle.secondary,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      items: List.generate(
        bottombar.length,
        (index) => BottomNavigationBarItem(
          icon: bottombar[index].icon,
          label: bottombar[index].label,
        ),
      ),
    );
  }
}
