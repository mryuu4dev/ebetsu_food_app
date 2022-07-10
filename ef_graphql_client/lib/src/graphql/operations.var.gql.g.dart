// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchShopListVars> _$gFetchShopListVarsSerializer =
    new _$GFetchShopListVarsSerializer();

class _$GFetchShopListVarsSerializer
    implements StructuredSerializer<GFetchShopListVars> {
  @override
  final Iterable<Type> types = const [GFetchShopListVars, _$GFetchShopListVars];
  @override
  final String wireName = 'GFetchShopListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchShopListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFetchShopListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFetchShopListVarsBuilder().build();
  }
}

class _$GFetchShopListVars extends GFetchShopListVars {
  factory _$GFetchShopListVars(
          [void Function(GFetchShopListVarsBuilder)? updates]) =>
      (new GFetchShopListVarsBuilder()..update(updates)).build();

  _$GFetchShopListVars._() : super._();

  @override
  GFetchShopListVars rebuild(
          void Function(GFetchShopListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchShopListVarsBuilder toBuilder() =>
      new GFetchShopListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchShopListVars;
  }

  @override
  int get hashCode {
    return 620484344;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GFetchShopListVars').toString();
  }
}

class GFetchShopListVarsBuilder
    implements Builder<GFetchShopListVars, GFetchShopListVarsBuilder> {
  _$GFetchShopListVars? _$v;

  GFetchShopListVarsBuilder();

  @override
  void replace(GFetchShopListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchShopListVars;
  }

  @override
  void update(void Function(GFetchShopListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchShopListVars build() {
    final _$result = _$v ?? new _$GFetchShopListVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
