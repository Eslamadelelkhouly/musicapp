import 'package:dartz/dartz.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';

abstract class GetMusicRepo {
  Future<Either<Map<String, dynamic>, MusicModel>> getMusicBts();
  Future<Either<Map<String, dynamic>, MusicModel>> getmusicArabic();
}
