import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/style.dart';

class SongsViewBody extends StatefulWidget {
  const SongsViewBody({super.key, required this.track});
  final Track track;

  @override
  State<SongsViewBody> createState() => _SongsViewBodyState();
}

class _SongsViewBodyState extends State<SongsViewBody> {
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  void _togglePlayPause() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(UrlSource(widget.track.preview));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ContainerImageSongs(track: widget.track),
          const SizedBox(height: 30),
          IconButton(
            iconSize: 60,
            color: Colors.white,
            icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
            onPressed: _togglePlayPause,
          ),
        ],
      ),
    );
  }
}

class ContainerImageSongs extends StatelessWidget {
  const ContainerImageSongs({
    super.key,
    required this.track,
  });

  final Track track;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                track.artist.pictureMedium,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            '${track.title}',
            textAlign: TextAlign.center,
            style: Style.textStylemedium18,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            '${track.artist.name}',
            textAlign: TextAlign.center,
            style: Style.textStylemedium12.copyWith(color: const Color(0xffB1AFE9)),
          ),
        ),
      ],
    );
  }
}
