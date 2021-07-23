import 'package:dio/dio.dart';

class DioSettings {
  static final mainServer = "https://api.???.kz/";

  DioSettings() {
    initialSettings();
  }

  Dio dio = Dio(BaseOptions(
    baseUrl: mainServer,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));

  void initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, _) {
          if (response.statusCode == 204) {
            throw DioError(
              error: "Отсутствуют данные",
              response: Response(
                  statusCode: 400, requestOptions: response.requestOptions),
              requestOptions: response.requestOptions,
            );
          }
        },
        onError: (DioError error, _) async {
          if (error.type == DioErrorType.connectTimeout) {
            throw DioError(
              error: "Сервер не отвечает попробуйте еще раз",
              response: Response(
                statusCode: 400,
                requestOptions: error.requestOptions,
              ),
              requestOptions: error.requestOptions,
            );
          } else if (error.message.contains("SocketException:")) {
            throw DioError(
              error: "Отсутствует интернет соединение",
              response: Response(
                statusCode: 400,
                requestOptions: error.requestOptions,
              ),
              requestOptions: error.requestOptions,
            );
          } else if (error.response!.statusCode == 401) {
            throw DioError(
              error: error.message,
              requestOptions: error.requestOptions,
            );
          }
          return error.error;
        },
      ),
    );
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    interceptors.requestLock.unlock();
  }
}
