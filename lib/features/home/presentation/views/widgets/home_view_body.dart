import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicapp/features/home/presentation/manager/get_bts_songs_cubit/get_bts_songs_cubit.dart';
import 'package:musicapp/features/home/presentation/manager/get_music_arabic_cubit/get_music_arabic_cubit_cubit.dart';
import 'package:musicapp/features/home/presentation/views/widgets/custom_search_textfield.dart';
import 'package:musicapp/features/home/presentation/views/widgets/list_view_list_tiel.dart';
import 'package:musicapp/features/home/presentation/views/widgets/list_view_recently.dart';
import 'package:musicapp/utils/core/color_style.dart';
import 'package:musicapp/utils/core/style.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GetBtsSongsCubit>().getBTSsongs();
    context.read<GetMusicArabicCubitCubit>().getMusicArabic();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.07,
            ),
            CustomSearchTextfield(
              controller: TextEditingController(),
              onChanged: (value) {
                log(value);
              },
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                Text(
                  'Recently Played'.toUpperCase(),
                  style: Style.textStylemedium18,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.25,
              child: BlocConsumer<GetBtsSongsCubit, GetBtsSongsState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state is GetBtsSongsLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is GetBtsSongsSuccess) {
                    return ListViewRecently(
                      musicModel: state.musicModel,
                    );
                  } else if (state is GetBtsSongsError) {
                    return Center(
                        child: Text(state.error['message'].toString()));
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
            Row(
              children: [
                Text(
                  'Recommanded music'.toUpperCase(),
                  style: Style.textStylemedium18.copyWith(),
                ),
              ],
            ),
            Expanded(
              child: BlocConsumer<GetMusicArabicCubitCubit,
                  GetMusicArabicCubitState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  Widget content;
                  if (state is GetMusicArabicCubitLoading) {
                    return content = const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  } else if (state is GetMusicArabicCubitSuccess) {
                    return content = ListViewListTiel(
                      musicModel: state.musicModel,
                    );
                  } else if (state is GetMusicArabicCubitError) {
                    return content = Center(
                      child: Text(state.error['message'].toString()),
                    );
                  } else {
                    return content = const SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
