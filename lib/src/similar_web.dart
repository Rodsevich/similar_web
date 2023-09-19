import 'package:dio/dio.dart';
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
    _instance._dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: headers ?? _instance.basicHeaders,
      ),
    );

    _instance._apiKey = apiKey;
    
    return _instance;
  }

  /// Private constructor.
  SimilarWeb._internal();

  /// Private class instance for Similar Web client.
  static final SimilarWeb _instance = SimilarWeb._internal();

  /// Late Dio instance, to be initialized inside the factory constructor.
  late final Dio _dio;

  /// The API key provided by Similar Web.
  late final String _apiKey;

  /// The headers with the minimum and essential values to make a query.
  Map<String, dynamic> get basicHeaders => {
        'content-type': 'application/json',
        'accept': 'application/json',
      };

  /// Convenience method to make an HTTP GET request.
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    try {
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
