import 'package:similar_web/src/api_constants/api_constants.dart';
import 'package:similar_web/src/models/models.dart';
import 'package:similar_web/src/similar_web.dart';

/// Contains all the endpoints referred to the
/// traffic of visits inside a domain.
extension VisitExtension on SimilarWeb {
  /// Returns the estimated number of all visits to a given domain:
  /// desktop and mobile visits combined. Historical data goes back 36 months,
  /// depending on your subscription.
  Future<TotalVisitsResponse> getTotalVisits(
    String domainName, {
    required String country,
    required Granularity granularity,
    DateTime? startDate,
    DateTime? endDate,
    bool? mainDomainOnly,
    Format? format,
    bool? showVerified,
    bool? mtd,
    bool? engagedOnly,
  }) async {
    final path =
        '${ApiConstants.baseUrl}website/$domainName/total-traffic-and-engagement/visits';

    // TODO(Andreas):
    // Once API can be tested, remove `dynamic` and set real get type.
    final response = await get<dynamic>(
      path,
      queryParameters: {
        if (startDate != null)
          'start_date': '${startDate.year}-${startDate.month}',
        if (endDate != null) 'end_date': '${endDate.year}-${endDate.month}',
        'country': country,
        'granularity': granularity.name,
        if (mainDomainOnly != null)
          'main_domain_only': mainDomainOnly.toString(),
        if (format != null) 'format': format.name,
        if (showVerified != null) 'show_verified': showVerified.toString(),
        if (mtd != null) 'mtd': mtd.toString(),
        if (engagedOnly != null) 'engaged_only': engagedOnly.toString(),
      },
    );
    return TotalVisitsResponseMapper.fromJson(response.data as String);
  }
}
