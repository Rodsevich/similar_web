// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'meta.dart';

class MetaMapper extends ClassMapperBase<Meta> {
  MetaMapper._();

  static MetaMapper? _instance;
  static MetaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetaMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Meta';

  static Request? _$request(Meta v) => v.request;
  static const Field<Meta, Request> _f$request =
      Field('request', _$request, opt: true);
  static String? _$status(Meta v) => v.status;
  static const Field<Meta, String> _f$status =
      Field('status', _$status, opt: true);
  static DateTime? _$lastUpdated(Meta v) => v.lastUpdated;
  static const Field<Meta, DateTime> _f$lastUpdated =
      Field('lastUpdated', _$lastUpdated, opt: true);

  @override
  final Map<Symbol, Field<Meta, dynamic>> fields = const {
    #request: _f$request,
    #status: _f$status,
    #lastUpdated: _f$lastUpdated,
  };

  static Meta _instantiate(DecodingData data) {
    return Meta(
        request: data.dec(_f$request),
        status: data.dec(_f$status),
        lastUpdated: data.dec(_f$lastUpdated));
  }

  @override
  final Function instantiate = _instantiate;

  static Meta fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Meta>(map));
  }

  static Meta fromJson(String json) {
    return _guard((c) => c.fromJson<Meta>(json));
  }
}

mixin MetaMappable {
  String toJson() {
    return MetaMapper._guard((c) => c.toJson(this as Meta));
  }

  Map<String, dynamic> toMap() {
    return MetaMapper._guard((c) => c.toMap(this as Meta));
  }

  MetaCopyWith<Meta, Meta, Meta> get copyWith =>
      _MetaCopyWithImpl(this as Meta, $identity, $identity);
  @override
  String toString() {
    return MetaMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            MetaMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return MetaMapper._guard((c) => c.hash(this));
  }
}

extension MetaValueCopy<$R, $Out> on ObjectCopyWith<$R, Meta, $Out> {
  MetaCopyWith<$R, Meta, $Out> get $asMeta =>
      $base.as((v, t, t2) => _MetaCopyWithImpl(v, t, t2));
}

abstract class MetaCopyWith<$R, $In extends Meta, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Request? request, String? status, DateTime? lastUpdated});
  MetaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetaCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Meta, $Out>
    implements MetaCopyWith<$R, Meta, $Out> {
  _MetaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Meta> $mapper = MetaMapper.ensureInitialized();
  @override
  $R call(
          {Object? request = $none,
          Object? status = $none,
          Object? lastUpdated = $none}) =>
      $apply(FieldCopyWithData({
        if (request != $none) #request: request,
        if (status != $none) #status: status,
        if (lastUpdated != $none) #lastUpdated: lastUpdated
      }));
  @override
  Meta $make(CopyWithData data) => Meta(
      request: data.get(#request, or: $value.request),
      status: data.get(#status, or: $value.status),
      lastUpdated: data.get(#lastUpdated, or: $value.lastUpdated));

  @override
  MetaCopyWith<$R2, Meta, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MetaCopyWithImpl($value, $cast, t);
}
