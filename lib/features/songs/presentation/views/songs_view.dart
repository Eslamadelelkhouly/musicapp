import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/features/songs/presentation/views/custom_app_bar_song_view.dart';
import 'package:musicapp/features/songs/presentation/views/widgets/songs_view_body.dart';
import 'package:musicapp/utils/core/color_style.dart';

class SongsView extends StatelessWidget {
  const SongsView({super.key});

  @override
  Widget build(BuildContext context) {
    Track track = GoRouterState.of(context).extra as Track;
    return Scaffold(
      appBar: CustomAppBarSongView(context),
      backgroundColor: ColorStyle.primary,
      body: SongsViewBody(
        track: track,
      ),
    );
  }
}
