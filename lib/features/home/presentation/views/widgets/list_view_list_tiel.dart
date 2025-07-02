import 'package:flutter/material.dart';
import 'package:musicapp/features/home/presentation/views/widgets/custom_list_tiel.dart';

class ListViewListTiel extends StatelessWidget {
  const ListViewListTiel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) => CustomListTile(),
    );
  }
}
