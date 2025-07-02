import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:musicapp/features/home/presentation/views/widgets/custom_search_textfield.dart';
import 'package:musicapp/features/home/presentation/views/widgets/list_view_list_tiel.dart';
import 'package:musicapp/features/home/presentation/views/widgets/list_view_recently.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: double.infinity,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            CustomSearchTextfield(
              controller: TextEditingController(),
              onChanged: (value) {
                log(value);
              },
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                Text(
                  'Recently Played'.toUpperCase(),
                  style: Style.textStylemedium18,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.25,
              child: ListViewRecently(),
            ),
            Row(
              children: [
                Text(
                  'Recommanded music'.toUpperCase(),
                  style: Style.textStylemedium18.copyWith(),
                ),
              ],
            ),
            Expanded(child: ListViewListTiel()),
          ],
        ),
      ),
    );
  }
}
