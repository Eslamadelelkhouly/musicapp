import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicapp/features/splash/presentation/view/widgets/custom_title.dart';
import 'package:musicapp/features/splash/presentation/view/widgets/discription_widget.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/custom_button.dart';
import 'package:musicapp/utils/core/images.dart';
import 'package:musicapp/utils/core/router_screens.dart';

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
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          CustomTitle(),
          DiscriptionWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomButton(
            onPressed: () {
              GoRouter.of(context).push(RouterScreens.home);
            },
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    Images.splashimg,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, 1.00),
                        end: Alignment(0.00, -1),
                        colors: [
                          ColorStyle.primary,
                          ColorStyle.title.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
