import 'package:dio/dio.dart';

/////////////App dio
class AppDioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(

      baseUrl: 'https://locus.hostek.xyz/public/api/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
  }) async {
    dio?.options.headers = {
    };
    return dio!.get(url);
  }

  static Future<Response> postData({
    required String url,
    String? token,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    dio?.options.headers = {
      'Authorization': token ?? '',
    };
    return dio!.post(url, data: data, queryParameters: query);
  }
}
