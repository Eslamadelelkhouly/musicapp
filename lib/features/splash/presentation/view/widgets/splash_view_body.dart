import 'package:flutter/material.dart';
import 'package:musicapp/features/splash/presentation/view/widgets/custom_title.dart';
import 'package:musicapp/features/splash/presentation/view/widgets/discription_widget.dart';
import 'package:musicapp/utils/core/color_style.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, 0.00),
          end: Alignment(0.98, 1.00),
          colors: [
            ColorStyle.primary,
            ColorStyle.secondary.withOpacity(0.54),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          CustomTitle(),
          DiscriptionWidget(),
        ],
      ),
    );
  }
}
