import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/style.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        width: 171,
        height: 61,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              ColorStyle.colorgradiantbutton,
              ColorStyle.title,
            ],
          ),
        ),
        child: Center(
          child: Text('Get Started', style: Style.textStylemedium18),
        ),
      ),
    );
  }
}
