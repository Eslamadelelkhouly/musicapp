import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/features/home/data/repos/get_music_repo_implementation.dart';
import 'package:musicapp/utils/core/api_services.dart';

part 'get_bts_songs_state.dart';

class GetBtsSongsCubit extends Cubit<GetBtsSongsState> {
  ApiServices apiServices = ApiServices(dio: Dio());
  GetBtsSongsCubit() : super(GetBtsSongsInitial());

  Future<void> getBTSsongs() async {
    var result = await GetMusicRepoImplementation(apiServices: apiServices)
        .getMusicBts();
    result.fold(
      (error) => emit(GetBtsSongsError(error: error)),
      (musicmodel) => emit(
        GetBtsSongsSuccess(musicModel: musicmodel),
      ),
    );
  }
}
