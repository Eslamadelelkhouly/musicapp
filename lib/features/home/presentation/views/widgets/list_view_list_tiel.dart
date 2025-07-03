import 'package:flutter/material.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/features/home/presentation/views/widgets/custom_list_tiel.dart';

class ListViewListTiel extends StatelessWidget {
  const ListViewListTiel({super.key, required this.musicModel});
  final MusicModel musicModel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
      scrollDirection: Axis.vertical,
      itemCount: musicModel.data.length,
      itemBuilder: (context, index) => CustomListTile(
        track: musicModel.data[index],
      ),
    );
  }
}
