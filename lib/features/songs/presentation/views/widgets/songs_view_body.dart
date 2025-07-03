import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/style.dart';

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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          ContainerImageSongs(track: track),
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
        SizedBox(
          height: 10,
        ),
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
            style: Style.textStylemedium12.copyWith(color: Color(0xffB1AFE9)),
          ),
        ),
      ],
    );
  }
}
