import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/utils/core/assets_images.dart';
import 'package:musicapp/utils/core/router_screens.dart';
import 'package:musicapp/utils/core/style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.track});
  final Track track;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          RouterScreens.songs,
          extra: track,
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: CachedNetworkImageProvider(
            track.artist.pictureMedium,
          ),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          "${track.title}",
          style: Style.textStylemedium15,
        ),
        subtitle: Text(
          "${track.artist.name}",
          style: Style.textStylemedium12.copyWith(
            color: Color(0xffB1AFE9),
          ),
        ),
      ),
    );
  }
}
