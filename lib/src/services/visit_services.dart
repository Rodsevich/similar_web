import 'package:similar_web/src/models/models.dart';
import 'package:similar_web/src/similar_web.dart';

/// Contains all the endpoints referred to the
/// traffic of visits inside a domain.
extension VisitService on SimilarWeb {
  /// Returns the estimated number of all visits to a given domain:
  /// desktop and mobile visits combined. Historical data goes back 36 months,
  /// depending on your subscription.
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

    // TODO(Andreas):
    // Once API can be tested, remove `dynamic` and set real get type.
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
