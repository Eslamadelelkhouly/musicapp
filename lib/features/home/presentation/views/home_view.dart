import 'package:flutter/material.dart';
import 'package:musicapp/features/home/presentation/views/widgets/custom_button_bar.dart';
import 'package:musicapp/utils/constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtonBar(
        index: index,
        onTab: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: screens[index],
    );
  }
}
