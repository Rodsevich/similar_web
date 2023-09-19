// ignore_for_file: public_member_api_docs

import 'package:dart_mappable/dart_mappable.dart';

part 'meta.mapper.dart';

@MappableClass()
/// Response metadata model.
class Meta with MetaMappable {
  Meta({
    this.request,
    this.status,
    this.lastUpdated,
  });
  final Request? request;
  final String? status;
  final DateTime? lastUpdated;
}

@MappableClass()
/// Request data model.
class Request with RequestMappable {
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

  final Granularity? granularity;
  final bool? mainDomainOnly;
  final bool? mtd;
  final bool? showVerified;
  final dynamic state;
  final Format? format;
  final String? domain;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? country;
}

/// Type of formats in which the response can come.
@MappableEnum()
enum Format {
  /// JSON format type.
  json,

  /// XML format type.
  xml,
}

/// Granularity for the returned values.
@MappableEnum()
enum Granularity {
  /// Daily granularity.
  daily,
  /// Weekly granularity.
  weekly,
  /// Monthly granularity.
  monthly,
}
