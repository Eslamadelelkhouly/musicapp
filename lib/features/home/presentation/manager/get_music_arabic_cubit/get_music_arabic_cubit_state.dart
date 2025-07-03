part of 'get_music_arabic_cubit_cubit.dart';

@immutable
sealed class GetMusicArabicCubitState {}

final class GetMusicArabicCubitInitial extends GetMusicArabicCubitState {}

final class GetMusicArabicCubitLoading extends GetMusicArabicCubitState {}

final class GetMusicArabicCubitSuccess extends GetMusicArabicCubitState {
  final MusicModel musicModel;

  GetMusicArabicCubitSuccess({required this.musicModel});
}

final class GetMusicArabicCubitError extends GetMusicArabicCubitState {
  final Map<String, dynamic> error;

  GetMusicArabicCubitError({required this.error});
}
