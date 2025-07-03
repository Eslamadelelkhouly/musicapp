import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicapp/features/home/presentation/manager/get_bts_songs_cubit/get_bts_songs_cubit.dart';
import 'package:musicapp/features/home/presentation/manager/get_music_arabic_cubit/get_music_arabic_cubit_cubit.dart';
import 'package:musicapp/features/home/presentation/views/widgets/home_view_body.dart';

List<BottomNavigationBarItem> bottombar = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
];

List<Widget> screens = [
  MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => GetBtsSongsCubit(),
      ),
      BlocProvider(
        create: (context) => GetMusicArabicCubitCubit(),
      ),
    ],
    child: Scaffold(
      body: HomeViewBody(),
    ),
  ),
  Scaffold(
    body: Center(
      child: Text("Search"),
    ),
  ),
  Scaffold(
    body: Center(
      child: Text("Profile"),
    ),
  ),
];
