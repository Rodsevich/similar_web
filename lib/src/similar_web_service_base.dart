/// {template ApiSimilarWebServiceBase}
/// ApiSimilarWebServiceBase is the base class for all API Request available.
/// {endtemplate}
abstract class ApiSimilarWebServiceBase {
  /// {@macro ApiSimilarWebServiceBase}
  const ApiSimilarWebServiceBase();

  ///* Verification
  /// Use this API to retrieve Webhook Resource Data.

// TODO(ANYONE): Verify name of method and the return type.
  Future<void> getWebhookResourceData(String verificationId);
}
