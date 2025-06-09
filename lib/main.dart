import 'package:flutter/material.dart';
import 'package:musicapp/utils/core/router_screens.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Music app',
      routerConfig: RouterScreens.router,
    );
  }
}
