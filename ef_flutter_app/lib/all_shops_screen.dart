import 'package:ef_flutter_app/no_items.dart';
import 'package:ef_flutter_app/shop_list_tile.dart';
import 'package:ef_graphql_client/ef_graphql_client.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AllShopsScreen extends StatelessWidget {
  AllShopsScreen({Key? key}) : super(key: key);

  final shopsReq = GFetchShopListReq();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Operation(
              operationRequest: shopsReq, 
              builder: (context, OperationResponse<GFetchShopListData, GFetchShopListVars>? response, Object? object) {
                if (response == null) {
                  throw Exception('response object is null');
                }
                if (response.loading) {
                  return const Center(child: CircularProgressIndicator(),);
                }

                final shops = response.data?.shops;

                if (shops == null) {
                  throw Exception('shops object is null');
                }
                if (shops.isEmpty) {
                  return const NoItems();
                }

                return Column(
                  children: [
                    for (int i = 0; i < shops.length; i++)
                      ShopListTile(shop: shops[i],),
                  ],
                );
              }, 
              client: GetIt.instance<Client>(),
            ),
          ]),
        ),
      ],
    );
  }
}