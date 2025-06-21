import 'package:dio/dio.dart';

class ApiClient {
  ApiClient() {
    dio = Dio(
      BaseOptions(baseUrl: "http://192.168.8.165:8888/api/v1", validateStatus: (value) => true),
    );
    //dio.interceptors.add(AuthInterceptor());
  }

  late final Dio dio;
}
