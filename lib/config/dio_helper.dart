import 'package:dio/dio.dart';

class DioHelper {
  final Dio dio;
  DioHelper.init()
    : dio = Dio(
        BaseOptions(
          baseUrl: "https://dummyjson.com/",
          receiveDataWhenStatusError: true,
          connectTimeout: const Duration(seconds: 60),
          receiveTimeout: const Duration(seconds: 60),
        ),
      );
}
