part of 'get_bts_songs_cubit.dart';

@immutable
sealed class GetBtsSongsState {}

final class GetBtsSongsInitial extends GetBtsSongsState {}

final class GetBtsSongsLoading extends GetBtsSongsState {}

final class GetBtsSongsSuccess extends GetBtsSongsState {
  final MusicModel musicModel;

  GetBtsSongsSuccess({required this.musicModel});
}

final class GetBtsSongsError extends GetBtsSongsState {
  final Map<String, dynamic> error;

  GetBtsSongsError({required this.error});
}
