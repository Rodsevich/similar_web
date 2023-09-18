import 'package:dio/dio.dart';

class BaseService {
  final _dio = Dio();

  Dio get dio => _dio;
}
