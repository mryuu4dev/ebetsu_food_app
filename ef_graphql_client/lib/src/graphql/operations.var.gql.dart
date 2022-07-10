// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ef_graphql_client/src/graphql/serializers.gql.dart' as _i1;

part 'operations.var.gql.g.dart';

abstract class GFetchShopListVars
    implements Built<GFetchShopListVars, GFetchShopListVarsBuilder> {
  GFetchShopListVars._();

  factory GFetchShopListVars([Function(GFetchShopListVarsBuilder b) updates]) =
      _$GFetchShopListVars;

  static Serializer<GFetchShopListVars> get serializer =>
      _$gFetchShopListVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchShopListVars.serializer, this)
          as Map<String, dynamic>);
  static GFetchShopListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchShopListVars.serializer, json);
}
