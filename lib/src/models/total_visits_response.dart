// ignore_for_file: public_member_api_docs

import 'package:dart_mappable/dart_mappable.dart';

part 'total_visits_response.mapper.dart';

// TODO(Andreas): Add documentation for all the classes in this file.
@MappableClass()
class TotalVisitsResponse {
  TotalVisitsResponse({
    this.meta,
    this.visits,
  });

  final Meta? meta;
  final List<Visit>? visits;
}

class Meta {
  Meta({
    this.request,
    this.status,
    this.lastUpdated,
  });
  final Request? request;
  final String? status;
  final DateTime? lastUpdated;
}

class Request {
  Request({
    this.granularity,
    this.mainDomainOnly,
    this.mtd,
    this.showVerified,
    this.state,
    this.format,
    this.domain,
    this.startDate,
    this.endDate,
    this.country,
  });

  final String? granularity;
  final bool? mainDomainOnly;
  final bool? mtd;
  final bool? showVerified;
  final dynamic state;
  final String? format;
  final String? domain;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? country;
}

class Visit {
  Visit({
    this.date,
    this.visits,
  });
  final DateTime? date;
  final double? visits;
}
