import 'package:dio/dio.dart';
import 'package:your_corner/util/constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        receiveDataWhenStatusError: true,
        // headers: {
        //   'X-localization': CacheHelper.getString(key: PREF_LANG_KEY),
        //   'Accept': 'application/json',
        //   'Authorization': 'Bearer ${CacheHelper.getString(key: PREF_TOKEN_KEY)}',
        // },
        followRedirects: false,
        validateStatus: (int? status){
          return status! < 500;
        },
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          // Do something before request is sent.
          // If you want to resolve the request with custom data,
          // you can resolve a `Response` using `handler.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject with a `DioException` using `handler.reject(dioError)`.
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // Do something with response data.
          // If you want to reject the request with a error message,
          // you can reject a `DioException` object using `handler.reject(dioError)`.
          print('Interceptors Wrapper onResponse Response: $response');
          print('Interceptors Wrapper onResponse Status Code: ${response.statusCode}');
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          // Do something with response error.
          // If you want to resolve the request with some custom data,
          // you can resolve a `Response` object using `handler.resolve(response)`.
          print('Interceptors Wrapper onError Error: ${e.error}');
          print('Interceptors Wrapper onError Response: ${e.response}');
          print('Interceptors Wrapper onError Status Code: ${e.response!.statusCode}');

          return handler.next(e);
        },
      ),
    );
  }
}
