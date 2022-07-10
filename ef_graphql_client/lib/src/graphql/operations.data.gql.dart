// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ef_graphql_client/src/graphql/serializers.gql.dart' as _i1;

part 'operations.data.gql.g.dart';

abstract class GFetchShopListData
    implements Built<GFetchShopListData, GFetchShopListDataBuilder> {
  GFetchShopListData._();

  factory GFetchShopListData([Function(GFetchShopListDataBuilder b) updates]) =
      _$GFetchShopListData;

  static void _initializeBuilder(GFetchShopListDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchShopListData_shops> get shops;
  static Serializer<GFetchShopListData> get serializer =>
      _$gFetchShopListDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchShopListData.serializer, this)
          as Map<String, dynamic>);
  static GFetchShopListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchShopListData.serializer, json);
}

abstract class GFetchShopListData_shops
    implements
        Built<GFetchShopListData_shops, GFetchShopListData_shopsBuilder> {
  GFetchShopListData_shops._();

  factory GFetchShopListData_shops(
          [Function(GFetchShopListData_shopsBuilder b) updates]) =
      _$GFetchShopListData_shops;

  static void _initializeBuilder(GFetchShopListData_shopsBuilder b) =>
      b..G__typename = 'Shop';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get description;
  String? get address;
  String? get open;
  String? get close;
  String? get parking;
  String? get photo;
  String? get url;
  String? get wifi;
  static Serializer<GFetchShopListData_shops> get serializer =>
      _$gFetchShopListDataShopsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchShopListData_shops.serializer, this)
          as Map<String, dynamic>);
  static GFetchShopListData_shops? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchShopListData_shops.serializer, json);
}
