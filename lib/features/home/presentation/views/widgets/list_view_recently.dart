import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/features/home/presentation/manager/get_bts_songs_cubit/get_bts_songs_cubit.dart';
import 'package:musicapp/features/home/presentation/views/widgets/card_recently_song.dart';
import 'package:musicapp/features/home/presentation/views/widgets/home_view_body.dart';

class ListViewRecently extends StatelessWidget {
  const ListViewRecently({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        width: 17,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: musicModel.data.length,
      itemBuilder: (context, index) => CardRecentlySong(
        track: musicModel.data[index],
      ),
    );
  }
}
