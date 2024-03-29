// ignore_for_file: public_member_api_docs

import 'package:dart_mappable/dart_mappable.dart';
import 'package:similar_web/src/models/models.dart';

part 'total_visits_response.mapper.dart';

/// Response model used in endpoints for websites total visits.
@MappableClass()
class TotalVisitsResponse with TotalVisitsResponseMappable {
  TotalVisitsResponse({
    this.meta,
    this.visits,
  });

  final Meta? meta;
  final List<Visit>? visits;
}

/// Visit data model.
@MappableClass()
class Visit with VisitMappable {
  Visit({
    this.date,
    this.visits,
  });
  final DateTime? date;
  final double? visits;
}
