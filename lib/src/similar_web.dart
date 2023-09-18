/// {@template similar_web}
/// An API consumer for "Similar Web" web statistics service. Use this if you
/// want to know estimated data for web traffic of non-owned pages
/// {@endtemplate}
class SimilarWeb {
  /// {@macro similar_web}
  const SimilarWeb(this.apiKey);

  /// The API key provided by Similar Web.
  final String apiKey;
}
