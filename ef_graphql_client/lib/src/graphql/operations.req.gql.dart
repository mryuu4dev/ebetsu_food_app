// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ef_graphql_client/src/graphql/operations.ast.gql.dart' as _i5;
import 'package:ef_graphql_client/src/graphql/operations.data.gql.dart' as _i2;
import 'package:ef_graphql_client/src/graphql/operations.var.gql.dart' as _i3;
import 'package:ef_graphql_client/src/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'operations.req.gql.g.dart';

abstract class GFetchShopListReq
    implements
        Built<GFetchShopListReq, GFetchShopListReqBuilder>,
        _i1.OperationRequest<_i2.GFetchShopListData, _i3.GFetchShopListVars> {
  GFetchShopListReq._();

  factory GFetchShopListReq([Function(GFetchShopListReqBuilder b) updates]) =
      _$GFetchShopListReq;

  static void _initializeBuilder(GFetchShopListReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FetchShopList')
    ..executeOnListen = true;
  _i3.GFetchShopListVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFetchShopListData? Function(
      _i2.GFetchShopListData?, _i2.GFetchShopListData?)? get updateResult;
  _i2.GFetchShopListData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFetchShopListData? parseData(Map<String, dynamic> json) =>
      _i2.GFetchShopListData.fromJson(json);
  static Serializer<GFetchShopListReq> get serializer =>
      _$gFetchShopListReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFetchShopListReq.serializer, this)
          as Map<String, dynamic>);
  static GFetchShopListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFetchShopListReq.serializer, json);
}
