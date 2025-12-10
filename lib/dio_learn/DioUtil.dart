
import 'package:dio/dio.dart';

class DioUtil {
  static Dio dio = Dio();

  DioUtil() {
    _dioOptions();
    _addInterceptors();
  }

  _dioOptions(){
    dio.options
      ..baseUrl = "https://geek.itheima.net/v1_0/"
      ..connectTimeout = Duration(milliseconds: 5000)
      ..sendTimeout = Duration(milliseconds: 5000)
      ..receiveTimeout = Duration(milliseconds: 5000)
      ..headers = {"Content-Type": "application/json"};
  }

  _addInterceptors() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (context, handler) {
          handler.next(context);
        },
        onResponse: (context, handler) {
          if (context.statusCode! >= 200 && context.statusCode! < 300) {
            handler.next(context);
            return;
          }
          handler.reject(DioException(requestOptions: context.requestOptions));
        },
        onError: (dioException, handler) {
          handler.reject(dioException);
        },
      ),
    );
  }

  get(String url, {Map<String, dynamic>? queryParameters}){
    return dio.get(url, queryParameters: queryParameters);
  }

  post(String url, {Map<String, dynamic>? queryParameters}){
    return dio.post(url, queryParameters: queryParameters);
  }

}
