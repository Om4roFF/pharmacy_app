

import 'package:dio/dio.dart';

mixin HttpService {
  static const BASE_URL = 'http://192.168.88.98:8000';

  static final Dio _dio = Dio(BaseOptions(baseUrl: BASE_URL));

  static Dio get dio => _dio;
}
