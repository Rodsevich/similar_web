// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'total_visits_response.dart';

class TotalVisitsResponseMapper extends ClassMapperBase<TotalVisitsResponse> {
  TotalVisitsResponseMapper._();

  static TotalVisitsResponseMapper? _instance;
  static TotalVisitsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TotalVisitsResponseMapper._());
      MetaMapper.ensureInitialized();
      VisitMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'TotalVisitsResponse';

  static Meta? _$meta(TotalVisitsResponse v) => v.meta;
  static const Field<TotalVisitsResponse, Meta> _f$meta =
      Field('meta', _$meta, opt: true);
  static List<Visit>? _$visits(TotalVisitsResponse v) => v.visits;
  static const Field<TotalVisitsResponse, List<Visit>> _f$visits =
      Field('visits', _$visits, opt: true);

  @override
  final Map<Symbol, Field<TotalVisitsResponse, dynamic>> fields = const {
    #meta: _f$meta,
    #visits: _f$visits,
  };

  static TotalVisitsResponse _instantiate(DecodingData data) {
    return TotalVisitsResponse(
        meta: data.dec(_f$meta), visits: data.dec(_f$visits));
  }

  @override
  final Function instantiate = _instantiate;

  static TotalVisitsResponse fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<TotalVisitsResponse>(map));
  }

  static TotalVisitsResponse fromJson(String json) {
    return _guard((c) => c.fromJson<TotalVisitsResponse>(json));
  }
}

mixin TotalVisitsResponseMappable {
  String toJson() {
    return TotalVisitsResponseMapper._guard(
        (c) => c.toJson(this as TotalVisitsResponse));
  }

  Map<String, dynamic> toMap() {
    return TotalVisitsResponseMapper._guard(
        (c) => c.toMap(this as TotalVisitsResponse));
  }

  TotalVisitsResponseCopyWith<TotalVisitsResponse, TotalVisitsResponse,
          TotalVisitsResponse>
      get copyWith => _TotalVisitsResponseCopyWithImpl(
          this as TotalVisitsResponse, $identity, $identity);
  @override
  String toString() {
    return TotalVisitsResponseMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TotalVisitsResponseMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return TotalVisitsResponseMapper._guard((c) => c.hash(this));
  }
}

extension TotalVisitsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TotalVisitsResponse, $Out> {
  TotalVisitsResponseCopyWith<$R, TotalVisitsResponse, $Out>
      get $asTotalVisitsResponse =>
          $base.as((v, t, t2) => _TotalVisitsResponseCopyWithImpl(v, t, t2));
}

abstract class TotalVisitsResponseCopyWith<$R, $In extends TotalVisitsResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MetaCopyWith<$R, Meta, Meta>? get meta;
  ListCopyWith<$R, Visit, VisitCopyWith<$R, Visit, Visit>>? get visits;
  $R call({Meta? meta, List<Visit>? visits});
  TotalVisitsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TotalVisitsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TotalVisitsResponse, $Out>
    implements TotalVisitsResponseCopyWith<$R, TotalVisitsResponse, $Out> {
  _TotalVisitsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TotalVisitsResponse> $mapper =
      TotalVisitsResponseMapper.ensureInitialized();
  @override
  MetaCopyWith<$R, Meta, Meta>? get meta =>
      $value.meta?.copyWith.$chain((v) => call(meta: v));
  @override
  ListCopyWith<$R, Visit, VisitCopyWith<$R, Visit, Visit>>? get visits =>
      $value.visits != null
          ? ListCopyWith($value.visits!, (v, t) => v.copyWith.$chain(t),
              (v) => call(visits: v))
          : null;
  @override
  $R call({Object? meta = $none, Object? visits = $none}) =>
      $apply(FieldCopyWithData({
        if (meta != $none) #meta: meta,
        if (visits != $none) #visits: visits
      }));
  @override
  TotalVisitsResponse $make(CopyWithData data) => TotalVisitsResponse(
      meta: data.get(#meta, or: $value.meta),
      visits: data.get(#visits, or: $value.visits));

  @override
  TotalVisitsResponseCopyWith<$R2, TotalVisitsResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TotalVisitsResponseCopyWithImpl($value, $cast, t);
}

class VisitMapper extends ClassMapperBase<Visit> {
  VisitMapper._();

  static VisitMapper? _instance;
  static VisitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VisitMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Visit';

  static DateTime? _$date(Visit v) => v.date;
  static const Field<Visit, DateTime> _f$date =
      Field('date', _$date, opt: true);
  static double? _$visits(Visit v) => v.visits;
  static const Field<Visit, double> _f$visits =
      Field('visits', _$visits, opt: true);

  @override
  final Map<Symbol, Field<Visit, dynamic>> fields = const {
    #date: _f$date,
    #visits: _f$visits,
  };

  static Visit _instantiate(DecodingData data) {
    return Visit(date: data.dec(_f$date), visits: data.dec(_f$visits));
  }

  @override
  final Function instantiate = _instantiate;

  static Visit fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Visit>(map));
  }

  static Visit fromJson(String json) {
    return _guard((c) => c.fromJson<Visit>(json));
  }
}

mixin VisitMappable {
  String toJson() {
    return VisitMapper._guard((c) => c.toJson(this as Visit));
  }

  Map<String, dynamic> toMap() {
    return VisitMapper._guard((c) => c.toMap(this as Visit));
  }

  VisitCopyWith<Visit, Visit, Visit> get copyWith =>
      _VisitCopyWithImpl(this as Visit, $identity, $identity);
  @override
  String toString() {
    return VisitMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            VisitMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return VisitMapper._guard((c) => c.hash(this));
  }
}

extension VisitValueCopy<$R, $Out> on ObjectCopyWith<$R, Visit, $Out> {
  VisitCopyWith<$R, Visit, $Out> get $asVisit =>
      $base.as((v, t, t2) => _VisitCopyWithImpl(v, t, t2));
}

abstract class VisitCopyWith<$R, $In extends Visit, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({DateTime? date, double? visits});
  VisitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VisitCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Visit, $Out>
    implements VisitCopyWith<$R, Visit, $Out> {
  _VisitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Visit> $mapper = VisitMapper.ensureInitialized();
  @override
  $R call({Object? date = $none, Object? visits = $none}) =>
      $apply(FieldCopyWithData({
        if (date != $none) #date: date,
        if (visits != $none) #visits: visits
      }));
  @override
  Visit $make(CopyWithData data) => Visit(
      date: data.get(#date, or: $value.date),
      visits: data.get(#visits, or: $value.visits));

  @override
  VisitCopyWith<$R2, Visit, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VisitCopyWithImpl($value, $cast, t);
}
