import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/utils/core/assets_images.dart';
import 'package:musicapp/utils/core/router_screens.dart';
import 'package:musicapp/utils/core/style.dart';

class CardRecentlySong extends StatelessWidget {
  const CardRecentlySong({super.key, required this.track});
  final Track track;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 151,
          height: 151,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                RouterScreens.songs,
                extra: track,
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: track.artist.picture,
                fit: BoxFit.cover,
                errorListener: (value) => Icon(
                  Icons.error,
                  color: Colors.white,
                ),
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          '${track.album.title}',
          style: Style.textStylemedium15,
        ),
        Text(
          '${track.artist.name}',
          style: Style.textStylemedium12.copyWith(
            color: Color(0xffB1AFE9),
          ),
        ),
      ],
    );
  }
}
