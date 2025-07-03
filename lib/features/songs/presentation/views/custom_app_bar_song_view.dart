 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicapp/utils/core/style.dart';

AppBar CustomAppBarSongView(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: const Icon(Icons.share),
          color: Colors.white,
          onPressed: () => context.pop(),
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          color: Colors.white,
          onPressed: () => context.pop(),
        ),
      ],
      title: Text(
        'Now playing',
        style: Style.textStylemedium18,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        color: Colors.white,
        onPressed: () => context.pop(),
      ),
    );
  }