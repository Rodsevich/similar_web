// import 'dart:convert';

// List<SimilarWebTables> similarWebTablesFromJson(String str) => List<SimilarWebTables>.from(json.decode(str).map((x) => SimilarWebTables.fromJson(x)));

// String similarWebTablesToJson(List<SimilarWebTables> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class SimilarWebTables {
//     String table;
//     List<TableFilter> tableFilters;
//     Granularity tableGranularity;
//     List<TableMetric> tableMetrics;

//     SimilarWebTables({
//         required this.table,
//         required this.tableFilters,
//         required this.tableGranularity,
//         required this.tableMetrics,
//     });

//     factory SimilarWebTables.fromJson(Map<String, dynamic> json) => SimilarWebTables(
//         table: json['table'],
//         tableFilters: List<TableFilter>.from(json['table_filters'].map((x) => TableFilter.fromJson(x))),
//         tableGranularity: Granularity.fromJson(json['table_granularity']),
//         tableMetrics: List<TableMetric>.from(json['table_metrics'].map((x) => TableMetric.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         'table': table,
//         'table_filters': List<dynamic>.from(tableFilters.map((x) => x.toJson())),
//         'table_granularity': tableGranularity.toJson(),
//         'table_metrics': List<dynamic>.from(tableMetrics.map((x) => x.toJson())),
//     };
// }

// class TableFilter {
//     bool isFilterable;
//     bool? isMandatory;
//     String? keyColumn;
//     String? name;
//     TableFilterType? type;
//     List<dynamic>? validValues;

//     TableFilter({
//         required this.isFilterable,
//         required this.isMandatory,
//         required this.keyColumn,
//         required this.name,
//         required this.type,
//         required this.validValues,
//     });

//     factory TableFilter.fromJson(Map<String, dynamic> json) => TableFilter(
//         isFilterable: json['is_filterable'],
//         isMandatory: json['is_mandatory'],
//         keyColumn: json['key_column'],
//         name: json['name'],
//         type: tableFilterTypeValues.map[json['type']]!,
//         validValues: json['valid_values'] == null ? [] : List<dynamic>.from(json['valid_values']!.map((x) => x)),
//     );

//     Map<String, dynamic> toJson() => {
//         'is_filterable': isFilterable,
//         'is_mandatory': isMandatory,
//         'key_column': keyColumn,
//         'name': name,
//         'type': tableFilterTypeValues.reverse[type],
//         'valid_values': validValues == null ? [] : List<dynamic>.from(validValues!.map((x) => x)),
//     };
// }

// enum TableFilterType {
//     BOOL,
//     LIST
// }

// final tableFilterTypeValues = EnumValues({
//     'bool': TableFilterType.BOOL,
//     'list': TableFilterType.LIST
// });

// class Granularity {
//     The7Days? daily;
//     The7Days? monthly;
//     The7Days? weekly;
//     The7Days? the7Days;

//     Granularity({
//         this.daily,
//         this.monthly,
//         this.weekly,
//         this.the7Days,
//     });

//     factory Granularity.fromJson(Map<String, dynamic> json) => Granularity(
//         daily: json['daily'] == null ? null : The7Days.fromJson(json['daily']),
//         monthly: json['monthly'] == null ? null : The7Days.fromJson(json['monthly']),
//         weekly: json['weekly'] == null ? null : The7Days.fromJson(json['weekly']),
//         the7Days: json['7days'] == null ? null : The7Days.fromJson(json['7days']),
//     );

//     Map<String, dynamic> toJson() => {
//         'daily': daily?.toJson(),
//         'monthly': monthly?.toJson(),
//         'weekly': weekly?.toJson(),
//         '7days': the7Days?.toJson(),
//     };
// }

// class The7Days {
//     dynamic endDate;
//     dynamic startDate;

//     The7Days({
//         required this.endDate,
//         required this.startDate,
//     });

//     factory The7Days.fromJson(Map<String, dynamic> json) => The7Days(
//         endDate: json['end_date'],
//         startDate: json['start_date'],
//     );

//     Map<String, dynamic> toJson() => {
//         'end_date': endDate,
//         'start_date': startDate,
//     };
// }

// enum EndDateEnum {
//     THE_202307,
//     THE_202308
// }

// final endDateEnumValues = EnumValues({
//     '2023-07': EndDateEnum.THE_202307,
//     '2023-08': EndDateEnum.THE_202308
// });

// enum StartDateEnum {
//     THE_201808,
//     THE_202008,
//     THE_202010,
//     THE_202011,
//     THE_202101,
//     THE_202105,
//     THE_202203
// }

// final startDateEnumValues = EnumValues({
//     '2018-08': StartDateEnum.THE_201808,
//     '2020-08': StartDateEnum.THE_202008,
//     '2020-10': StartDateEnum.THE_202010,
//     '2020-11': StartDateEnum.THE_202011,
//     '2021-01': StartDateEnum.THE_202101,
//     '2021-05': StartDateEnum.THE_202105,
//     '2022-03': StartDateEnum.THE_202203
// });

// class TableMetric {
//     Claim? claim;
//     String? description;
//     String metricName;
//     Granularity supportedGranularity;
//     TableMetricType type;
//     dynamic validValues;

//     TableMetric({
//         required this.claim,
//         required this.description,
//         required this.metricName,
//         required this.supportedGranularity,
//         required this.type,
//         required this.validValues,
//     });

//     factory TableMetric.fromJson(Map<String, dynamic> json) => TableMetric(
//         claim: claimValues.map[json['claim']]!,
//         description: json['description'],
//         metricName: json['metric_name'],
//         supportedGranularity: Granularity.fromJson(json['supported_granularity']),
//         type: tableMetricTypeValues.map[json['type']]!,
//         validValues: json['valid_values'],
//     );

//     Map<String, dynamic> toJson() => {
//         'claim': claimValues.reverse[claim],
//         'description': description,
//         'metric_name': metricName,
//         'supported_granularity': supportedGranularity.toJson(),
//         'type': tableMetricTypeValues.reverse[type],
//         'valid_values': validValues,
//     };
// }

// enum Claim {
//     APP_ANNIE_APP_AUDIENCE_INTERESTS_API,
//     APP_ANNIE_ENGAGEMENT_API,
//     APP_ANNIE_RETENTION_API,
//     APP_DOWNLOADS_API,
//     APP_ENGAGEMENT_OVERVIEW_API,
//     BATCH_API_TYPE_SHOPPER,
//     COMPANY_INFO_API,
//     DESKTOP_PPC_SPEND_API,
//     KEYWORD_ANALYSIS_API,
//     TRAFFIC_SOURCES_API
// }

// final claimValues = EnumValues({
//     'AppAnnieAppAudienceInterestsAPI': Claim.APP_ANNIE_APP_AUDIENCE_INTERESTS_API,
//     'AppAnnieEngagementAPI': Claim.APP_ANNIE_ENGAGEMENT_API,
//     'AppAnnieRetentionAPI': Claim.APP_ANNIE_RETENTION_API,
//     'AppDownloadsAPI': Claim.APP_DOWNLOADS_API,
//     'AppEngagementOverviewAPI': Claim.APP_ENGAGEMENT_OVERVIEW_API,
//     'BatchAPITypeShopper': Claim.BATCH_API_TYPE_SHOPPER,
//     'CompanyInfo_API': Claim.COMPANY_INFO_API,
//     'DesktopPPCSpendAPI': Claim.DESKTOP_PPC_SPEND_API,
//     'KeywordAnalysisAPI': Claim.KEYWORD_ANALYSIS_API,
//     'TrafficSources_API': Claim.TRAFFIC_SOURCES_API
// });

// enum TableMetricType {
//     BIGINT,
//     DOUBLE,
//     INT,
//     OBJECT,
//     STRING
// }

// final tableMetricTypeValues = EnumValues({
//     'bigint': TableMetricType.BIGINT,
//     'double': TableMetricType.DOUBLE,
//     'int': TableMetricType.INT,
//     'object': TableMetricType.OBJECT,
//     'string': TableMetricType.STRING
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         reverseMap = map.map((k, v) => MapEntry(v, k));
//         return reverseMap;
//     }
// }
