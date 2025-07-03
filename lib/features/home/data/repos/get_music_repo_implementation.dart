import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:musicapp/features/home/data/models/music_model.dart';
import 'package:musicapp/features/home/data/repos/get_music_repo.dart';
import 'package:musicapp/utils/core/api_services.dart';
import 'package:musicapp/utils/core/endpoint.dart';

class GetMusicRepoImplementation extends GetMusicRepo {
  final ApiServices apiServices;

  GetMusicRepoImplementation({required this.apiServices});
  @override
  Future<Either<Map<String, dynamic>, MusicModel>> getMusicBts() async {
    try {
      var response = await apiServices.get(endpoint: Endpoint.getBts);
      log(response.toString());
      return Right(MusicModel.fromJson(response));
    } on DioException catch (e) {
      final errorMap = {
        'error': true,
        'message': e.response?.data?['message'] ??
            e.message ??
            'An error occurred while connecting to the server',
        'statusCode': e.response?.statusCode,
        'type': e.type.toString(),
      };
      log('DioException: $errorMap');
      return Left(errorMap);
    } catch (e) {
      final errorMap = {
        'error': true,
        'message': 'Unexpected error: $e',
      };
      log('Unexpected Error: $errorMap');
      return Left(errorMap);
    }
  }

  @override
  Future<Either<Map<String, dynamic>, MusicModel>> getmusicArabic() async {
    try {
      var response = await apiServices.get(endpoint: Endpoint.getmusicarabic);
      log(response.toString());
      return Right(MusicModel.fromJson(response));
    } on DioException catch (e) {
      final errorMap = {
        'error': true,
        'message': e.response?.data?['message'] ??
            e.message ??
            'An error occurred while connecting to the server',
        'statusCode': e.response?.statusCode,
        'type': e.type.toString(),
      };
      log('DioException: $errorMap');
      return Left(errorMap);
    } catch (e) {
      final errorMap = {
        'error': true,
        'message': 'Unexpected error: $e',
      };
      log('Unexpected Error: $errorMap');
      return Left(errorMap);
    }
  }
}
