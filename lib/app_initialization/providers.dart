import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sample_mvvm_with_bloc/base/base.dart';
import 'package:sample_mvvm_with_bloc/remote/remote.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProviders {
  static getAppProviders(SharedPreferences preferences, String baseUrl) async {
    final sessionManager = SessionManager();
    final dio = Dio();
    final options = BaseOptions(
      connectTimeout:
          const Duration(seconds: ApiConstants.connectTimeoutInSecs),
      receiveTimeout:
          const Duration(seconds: ApiConstants.receiveTimeoutInSecs),
    );

    dio.options = options;

    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false));
    options.baseUrl = baseUrl;

    return [
      RepositoryProvider(create: (context) => sessionManager),
      /*RepositoryProvider(
          create: (context) =>
              AuthRepository(sessionManager, dio, preferences)),*/
    ];
  }
}
