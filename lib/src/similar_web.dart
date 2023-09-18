import 'package:similar_web/src/models/models.dart';
import 'package:similar_web/src/similar_web_service_base.dart';

/// {@template similar_web}
/// An API consumer for "Similar Web" web statistics service. Use this if you
/// want to know estimated data for web traffic of non-owned pages
/// {@endtemplate}
class SimilarWeb extends ApiSimilarWebServiceBase {
  /// {@macro similar_web}
  SimilarWeb(super.apiKey, {super.headers}) : super();

  @override
  Future<void> getWebhookResourceData(String verificationId) {
    // TODO: implement getWebhookResourceData
    throw UnimplementedError();
  }

  @override
  Future<TotalVisitsResponse> getTotalVisits(
    String domainName, {
    DateTime? startDate,
    DateTime? endDate,
    String? country,
    String? granularity,
    bool? mainDomainOnly,
    Format? format,
    bool? showVerified,
    bool? mtd,
    bool? engagedOnly,
  }) async {
    final path = 'website/$domainName/total-traffic-and-engagement/visits';

    final response = await get<dynamic>(
      path,
      queryParameters: {
        if (startDate != null) 'start_date': startDate,
        if (endDate != null) 'end_date': endDate,
        if (country != null) 'country': country,
        if (granularity != null) 'granularity': granularity,
        if (mainDomainOnly != null) 'main_domain_only': mainDomainOnly,
        if (format != null) 'format': format,
        if (showVerified != null) 'show_verified': showVerified,
        if (mtd != null) 'mtd': mtd,
        if (engagedOnly != null) 'engaged_only': engagedOnly,
      },
    );

    return TotalVisitsResponseMapper.fromJson(response.data as String);
  }
}

/// Type of formats in which the response can come.
enum Format {
  /// Json format type.
  json,
}
