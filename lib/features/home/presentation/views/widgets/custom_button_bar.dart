import 'package:flutter/material.dart';
import 'package:musicapp/utils/constant.dart';
import 'package:musicapp/utils/core/color_style.dart';

class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({
    super.key,
    required this.onTab,
    required this.index,
  });
  final ValueChanged<int> onTab;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 1,
      currentIndex: index,
      onTap: onTab,
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorStyle.primary,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
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
