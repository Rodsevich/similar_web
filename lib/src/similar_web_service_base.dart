/// {template ApiSimilarWebServiceBase}
/// ApiSimilarWebServiceBase is the base class for all API Request available.
/// {endtemplate}
abstract class ApiSimilarWebServiceBase {
  /// {@macro ApiSimilarWebServiceBase}
  const ApiSimilarWebServiceBase(String apiKey) : _apiKey = apiKey;

  /// The API key provided by Similar Web.
  final String _apiKey;

  ///* Verification
  /// Use this API to retrieve Webhook Resource Data.

// TODO(ANYONE): Verify name of method and the return type.
  Future<void> getWebhookResourceData(String verificationId);
}

Map<String, dynamic> get headers => {
      'api-key': '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };
