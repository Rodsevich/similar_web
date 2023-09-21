import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart' show visibleForTesting;
import 'package:similar_web/src/api_constants/api_constants.dart';

/// {@template similar_web}
/// An API consumer for "Similar Web" web statistics service. Use this if you
/// want to know estimated data for web traffic of non-owned pages
/// {@endtemplate}
class SimilarWeb {
  /// {@macro similar_web}
  factory SimilarWeb(
    String apiKey, {
    Map<String, dynamic>? headers,
  }) {
    _instance._dio.options.baseUrl = ApiConstants.baseUrl;
    _instance._dio.options.headers = headers ?? _instance.basicHeaders;  

    _instance._apiKey = apiKey;
    
    return _instance;
  }

  /// Private constructor.
  SimilarWeb._internal();

  /// Private class instance for Similar Web client.
  static final SimilarWeb _instance = SimilarWeb._internal();

  /// Late Dio instance, to be initialized inside the factory constructor.
  final Dio _dio = Dio();

  /// The API key provided by Similar Web.
  String _apiKey = '';

  /// The headers with the minimum and essential values to make a query.
  Map<String, dynamic> get basicHeaders => {
        'content-type': 'application/json',
        'accept': 'application/json',
      };

  @visibleForTesting
  Response? response;

  /// Convenience method to make an HTTP GET request.
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    if(response != null) {
      return Future.value(response as Response<T>);
    }
    try {
      if (_apiKey == 'MOCK') {
        return Future.value(this.response! as Response<T>);
      }
      final response = _dio.get<T>(
        path,
        queryParameters: {
          'api_key': _apiKey,
          if (queryParameters != null) ...queryParameters,
        },
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
