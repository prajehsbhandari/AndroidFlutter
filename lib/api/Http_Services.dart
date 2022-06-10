import 'package:dio/dio.dart';
import 'package:untitled/utils/Url.dart';

class Http_Services {
  static final Http_Services _instance = Http_Services.internal();

  factory Http_Services() => _instance;
  Http_Services.internal();

  Dio? _dio;
  Dio getDioInstance() {
    if (_dio == null) {
      return Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: 5000,
        ),
      );
    } else {
      return _dio!;
    }
  }
}





































































