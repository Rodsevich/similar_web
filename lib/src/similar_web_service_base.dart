import 'package:dio/dio.dart';
import 'package:similar_web/src/api_constants/api_constants.dart';

/// {template ApiSimilarWebServiceBase}
/// ApiSimilarWebServiceBase is the base class for all API Request available.
/// {endtemplate}
abstract class ApiSimilarWebServiceBase {
  /// {@macro ApiSimilarWebServiceBase}
  ApiSimilarWebServiceBase(
    String apiKey, {
    Map<String, dynamic>? headers,
  }) : _apiKey = apiKey {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: headers ?? basicHeaders,
      ),
    );
  }

  late Dio _dio;

  /// The API key provided by Similar Web.
  final String _apiKey;

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

  /// Returns the estimated number of all visits to a given domain:
  /// desktop and mobile visits combined. Historical data goes back 36 months,
  /// depending on your subscription.
  Future<void> getTotalVisits(String domainName);
}
