import 'package:flutter/material.dart';
import 'package:musicapp/features/home/presentation/views/widgets/card_recently_song.dart';

class ListViewRecently extends StatelessWidget {
  const ListViewRecently({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        width: 17,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => CardRecentlySong(),
    );
  }
}
