import 'dart:developer';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    try {
      final response = await dio.get(
        endpoint,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.receiveTimeout) {
        log('Receive timeout occurred');
      } else if (e.type == DioExceptionType.connectionError) {
        log('Connection error occurred');
      } else if (e.type == DioExceptionType.connectionTimeout) {
        log('Connection timeout occurred');
      }

      final errorMsg = e.response?.data?['message'] ??
          e.message ??
          e.error?.toString() ??
          'Request failed with no error message';

      log('Dio Error Details:');
      log('- URL: ${e.requestOptions.uri}');
      log('- Status: ${e.response?.statusCode}');
      log('- Error: $errorMsg');
      log('- Response: ${e.response?.data}');
      log('- DioErrorType: ${e.type}');

      throw Exception(errorMsg);
    } catch (e) {
      log('Non-Dio Error: $e');
      throw DioException(
        requestOptions: RequestOptions(path: endpoint),
        error: 'Unexpected error: $e',
      );
    }
  }
}
