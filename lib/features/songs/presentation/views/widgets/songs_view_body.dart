import 'package:flutter/material.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/utils/core/color_style.dart';

class SongsViewBody extends StatelessWidget {
  const SongsViewBody({super.key, required this.track});
  final Track track;
  @override
  Widget build(BuildContext context) {
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
        ));
  }
}
