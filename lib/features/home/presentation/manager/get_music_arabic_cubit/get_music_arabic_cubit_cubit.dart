import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/features/home/data/repos/get_music_repo_implementation.dart';
import 'package:musicapp/utils/core/api_services.dart';

part 'get_music_arabic_cubit_state.dart';

class GetMusicArabicCubitCubit extends Cubit<GetMusicArabicCubitState> {
  ApiServices apiServices = ApiServices(dio: Dio());
  GetMusicArabicCubitCubit() : super(GetMusicArabicCubitInitial());
  Future<void> getMusicArabic() async {
    emit(GetMusicArabicCubitLoading());
    var result = await GetMusicRepoImplementation(apiServices: apiServices)
        .getmusicArabic();
    result.fold(
      (error) => emit(GetMusicArabicCubitError(error: error)),
      (musicmodel) => emit(
        GetMusicArabicCubitSuccess(musicModel: musicmodel),
      ),
    );
  }
}
