// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'meta.dart';

class FormatMapper extends EnumMapper<Format> {
  FormatMapper._();

  static FormatMapper? _instance;
  static FormatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FormatMapper._());
    }
    return _instance!;
  }

  static Format fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Format decode(dynamic value) {
    switch (value) {
      case 'json':
        return Format.json;
      case 'xml':
        return Format.xml;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Format self) {
    switch (self) {
      case Format.json:
        return 'json';
      case Format.xml:
        return 'xml';
    }
  }
}

extension FormatMapperExtension on Format {
  String toValue() {
    FormatMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class GranularityMapper extends EnumMapper<Granularity> {
  GranularityMapper._();

  static GranularityMapper? _instance;
  static GranularityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GranularityMapper._());
    }
    return _instance!;
  }

  static Granularity fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Granularity decode(dynamic value) {
    switch (value) {
      case 'daily':
        return Granularity.daily;
      case 'weekly':
        return Granularity.weekly;
      case 'monthly':
        return Granularity.monthly;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Granularity self) {
    switch (self) {
      case Granularity.daily:
        return 'daily';
      case Granularity.weekly:
        return 'weekly';
      case Granularity.monthly:
        return 'monthly';
    }
  }
}

extension GranularityMapperExtension on Granularity {
  String toValue() {
    GranularityMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class MetaMapper extends ClassMapperBase<Meta> {
  MetaMapper._();

  static MetaMapper? _instance;
  static MetaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetaMapper._());
      RequestMapper.ensureInitialized();
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
  RequestCopyWith<$R, Request, Request>? get request;
  $R call({Request? request, String? status, DateTime? lastUpdated});
  MetaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetaCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Meta, $Out>
    implements MetaCopyWith<$R, Meta, $Out> {
  _MetaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Meta> $mapper = MetaMapper.ensureInitialized();
  @override
  RequestCopyWith<$R, Request, Request>? get request =>
      $value.request?.copyWith.$chain((v) => call(request: v));
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

class RequestMapper extends ClassMapperBase<Request> {
  RequestMapper._();

  static RequestMapper? _instance;
  static RequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RequestMapper._());
      GranularityMapper.ensureInitialized();
      FormatMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Request';

  static Granularity? _$granularity(Request v) => v.granularity;
  static const Field<Request, Granularity> _f$granularity =
      Field('granularity', _$granularity, opt: true);
  static bool? _$mainDomainOnly(Request v) => v.mainDomainOnly;
  static const Field<Request, bool> _f$mainDomainOnly =
      Field('mainDomainOnly', _$mainDomainOnly, opt: true);
  static bool? _$mtd(Request v) => v.mtd;
  static const Field<Request, bool> _f$mtd = Field('mtd', _$mtd, opt: true);
  static bool? _$showVerified(Request v) => v.showVerified;
  static const Field<Request, bool> _f$showVerified =
      Field('showVerified', _$showVerified, opt: true);
  static dynamic _$state(Request v) => v.state;
  static const Field<Request, dynamic> _f$state =
      Field('state', _$state, opt: true);
  static Format? _$format(Request v) => v.format;
  static const Field<Request, Format> _f$format =
      Field('format', _$format, opt: true);
  static String? _$domain(Request v) => v.domain;
  static const Field<Request, String> _f$domain =
      Field('domain', _$domain, opt: true);
  static DateTime? _$startDate(Request v) => v.startDate;
  static const Field<Request, DateTime> _f$startDate =
      Field('startDate', _$startDate, opt: true);
  static DateTime? _$endDate(Request v) => v.endDate;
  static const Field<Request, DateTime> _f$endDate =
      Field('endDate', _$endDate, opt: true);
  static String? _$country(Request v) => v.country;
  static const Field<Request, String> _f$country =
      Field('country', _$country, opt: true);

  @override
  final Map<Symbol, Field<Request, dynamic>> fields = const {
    #granularity: _f$granularity,
    #mainDomainOnly: _f$mainDomainOnly,
    #mtd: _f$mtd,
    #showVerified: _f$showVerified,
    #state: _f$state,
    #format: _f$format,
    #domain: _f$domain,
    #startDate: _f$startDate,
    #endDate: _f$endDate,
    #country: _f$country,
  };

  static Request _instantiate(DecodingData data) {
    return Request(
        granularity: data.dec(_f$granularity),
        mainDomainOnly: data.dec(_f$mainDomainOnly),
        mtd: data.dec(_f$mtd),
        showVerified: data.dec(_f$showVerified),
        state: data.dec(_f$state),
        format: data.dec(_f$format),
        domain: data.dec(_f$domain),
        startDate: data.dec(_f$startDate),
        endDate: data.dec(_f$endDate),
        country: data.dec(_f$country));
  }

  @override
  final Function instantiate = _instantiate;

  static Request fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Request>(map));
  }

  static Request fromJson(String json) {
    return _guard((c) => c.fromJson<Request>(json));
  }
}

mixin RequestMappable {
  String toJson() {
    return RequestMapper._guard((c) => c.toJson(this as Request));
  }

  Map<String, dynamic> toMap() {
    return RequestMapper._guard((c) => c.toMap(this as Request));
  }

  RequestCopyWith<Request, Request, Request> get copyWith =>
      _RequestCopyWithImpl(this as Request, $identity, $identity);
  @override
  String toString() {
    return RequestMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            RequestMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return RequestMapper._guard((c) => c.hash(this));
  }
}

extension RequestValueCopy<$R, $Out> on ObjectCopyWith<$R, Request, $Out> {
  RequestCopyWith<$R, Request, $Out> get $asRequest =>
      $base.as((v, t, t2) => _RequestCopyWithImpl(v, t, t2));
}

abstract class RequestCopyWith<$R, $In extends Request, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {Granularity? granularity,
      bool? mainDomainOnly,
      bool? mtd,
      bool? showVerified,
      dynamic state,
      Format? format,
      String? domain,
      DateTime? startDate,
      DateTime? endDate,
      String? country});
  RequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Request, $Out>
    implements RequestCopyWith<$R, Request, $Out> {
  _RequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Request> $mapper =
      RequestMapper.ensureInitialized();
  @override
  $R call(
          {Object? granularity = $none,
          Object? mainDomainOnly = $none,
          Object? mtd = $none,
          Object? showVerified = $none,
          Object? state = $none,
          Object? format = $none,
          Object? domain = $none,
          Object? startDate = $none,
          Object? endDate = $none,
          Object? country = $none}) =>
      $apply(FieldCopyWithData({
        if (granularity != $none) #granularity: granularity,
        if (mainDomainOnly != $none) #mainDomainOnly: mainDomainOnly,
        if (mtd != $none) #mtd: mtd,
        if (showVerified != $none) #showVerified: showVerified,
        if (state != $none) #state: state,
        if (format != $none) #format: format,
        if (domain != $none) #domain: domain,
        if (startDate != $none) #startDate: startDate,
        if (endDate != $none) #endDate: endDate,
        if (country != $none) #country: country
      }));
  @override
  Request $make(CopyWithData data) => Request(
      granularity: data.get(#granularity, or: $value.granularity),
      mainDomainOnly: data.get(#mainDomainOnly, or: $value.mainDomainOnly),
      mtd: data.get(#mtd, or: $value.mtd),
      showVerified: data.get(#showVerified, or: $value.showVerified),
      state: data.get(#state, or: $value.state),
      format: data.get(#format, or: $value.format),
      domain: data.get(#domain, or: $value.domain),
      startDate: data.get(#startDate, or: $value.startDate),
      endDate: data.get(#endDate, or: $value.endDate),
      country: data.get(#country, or: $value.country));

  @override
  RequestCopyWith<$R2, Request, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RequestCopyWithImpl($value, $cast, t);
}
