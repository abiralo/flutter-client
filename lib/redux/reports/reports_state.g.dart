// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReportsUIState> _$reportsUIStateSerializer =
    new _$ReportsUIStateSerializer();

class _$ReportsUIStateSerializer
    implements StructuredSerializer<ReportsUIState> {
  @override
  final Iterable<Type> types = const [ReportsUIState, _$ReportsUIState];
  @override
  final String wireName = 'ReportsUIState';

  @override
  Iterable<Object> serialize(Serializers serializers, ReportsUIState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'report',
      serializers.serialize(object.report,
          specifiedType: const FullType(String)),
      'customStartDate',
      serializers.serialize(object.customStartDate,
          specifiedType: const FullType(String)),
      'customEndDate',
      serializers.serialize(object.customEndDate,
          specifiedType: const FullType(String)),
      'filters',
      serializers.serialize(object.filters,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  ReportsUIState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportsUIStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'report':
          result.report = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customStartDate':
          result.customStartDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customEndDate':
          result.customEndDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReportsUIState extends ReportsUIState {
  @override
  final String report;
  @override
  final String customStartDate;
  @override
  final String customEndDate;
  @override
  final BuiltMap<String, String> filters;

  factory _$ReportsUIState([void Function(ReportsUIStateBuilder) updates]) =>
      (new ReportsUIStateBuilder()..update(updates)).build();

  _$ReportsUIState._(
      {this.report, this.customStartDate, this.customEndDate, this.filters})
      : super._() {
    if (report == null) {
      throw new BuiltValueNullFieldError('ReportsUIState', 'report');
    }
    if (customStartDate == null) {
      throw new BuiltValueNullFieldError('ReportsUIState', 'customStartDate');
    }
    if (customEndDate == null) {
      throw new BuiltValueNullFieldError('ReportsUIState', 'customEndDate');
    }
    if (filters == null) {
      throw new BuiltValueNullFieldError('ReportsUIState', 'filters');
    }
  }

  @override
  ReportsUIState rebuild(void Function(ReportsUIStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportsUIStateBuilder toBuilder() =>
      new ReportsUIStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportsUIState &&
        report == other.report &&
        customStartDate == other.customStartDate &&
        customEndDate == other.customEndDate &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, report.hashCode), customStartDate.hashCode),
            customEndDate.hashCode),
        filters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportsUIState')
          ..add('report', report)
          ..add('customStartDate', customStartDate)
          ..add('customEndDate', customEndDate)
          ..add('filters', filters))
        .toString();
  }
}

class ReportsUIStateBuilder
    implements Builder<ReportsUIState, ReportsUIStateBuilder> {
  _$ReportsUIState _$v;

  String _report;
  String get report => _$this._report;
  set report(String report) => _$this._report = report;

  String _customStartDate;
  String get customStartDate => _$this._customStartDate;
  set customStartDate(String customStartDate) =>
      _$this._customStartDate = customStartDate;

  String _customEndDate;
  String get customEndDate => _$this._customEndDate;
  set customEndDate(String customEndDate) =>
      _$this._customEndDate = customEndDate;

  MapBuilder<String, String> _filters;
  MapBuilder<String, String> get filters =>
      _$this._filters ??= new MapBuilder<String, String>();
  set filters(MapBuilder<String, String> filters) => _$this._filters = filters;

  ReportsUIStateBuilder();

  ReportsUIStateBuilder get _$this {
    if (_$v != null) {
      _report = _$v.report;
      _customStartDate = _$v.customStartDate;
      _customEndDate = _$v.customEndDate;
      _filters = _$v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportsUIState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReportsUIState;
  }

  @override
  void update(void Function(ReportsUIStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportsUIState build() {
    _$ReportsUIState _$result;
    try {
      _$result = _$v ??
          new _$ReportsUIState._(
              report: report,
              customStartDate: customStartDate,
              customEndDate: customEndDate,
              filters: filters.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'filters';
        filters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReportsUIState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new