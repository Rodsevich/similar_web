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
  ListCopyWith<$R, Visit, ObjectCopyWith<$R, Visit, Visit>>? get visits;
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
  ListCopyWith<$R, Visit, ObjectCopyWith<$R, Visit, Visit>>? get visits =>
      $value.visits != null
          ? ListCopyWith($value.visits!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(visits: v))
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
