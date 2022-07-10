import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ef_graphql_client/src/graphql/operations.data.gql.dart'
    show GFetchShopListData, GFetchShopListData_shops;
import 'package:ef_graphql_client/src/graphql/operations.req.gql.dart'
    show GFetchShopListReq;
import 'package:ef_graphql_client/src/graphql/operations.var.gql.dart'
    show GFetchShopListVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GFetchShopListData,
  GFetchShopListData_shops,
  GFetchShopListReq,
  GFetchShopListVars
])
final Serializers serializers = _serializersBuilder.build();
