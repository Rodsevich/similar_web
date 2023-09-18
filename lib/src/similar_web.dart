import 'package:similar_web/src/similar_web_service_base.dart';

/// {@template similar_web}
/// An API consumer for "Similar Web" web statistics service. Use this if you
/// want to know estimated data for web traffic of non-owned pages
/// {@endtemplate}
class SimilarWeb extends ApiSimilarWebServiceBase {


  /// {@macro similar_web}
  const SimilarWeb(super.apiKey) : super();

  /// The API key provided by Similar Web.
  // final String apiKey;

  @override
  Future<void> getWebhookResourceData(String verificationId) {
    // TODO: implement getWebhookResourceData
    throw UnimplementedError();
  }
}
