import 'package:ef_flutter_app/shop_detail_view.dart';
import 'package:ef_graphql_client/ef_graphql_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShopListTile extends StatelessWidget {
  const ShopListTile({Key? key, required this.shop}) : super(key: key);

  final GFetchShopListData_shops shop;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context, 
              builder: (context) => ShopDetailView(shop: shop,),
            );
          },
          child: Row(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(shop.photo ?? 'http://placehold.jp/100x100.png'),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shop.name,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      shop.description ?? '説明文が登録されていません',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,),
          child: Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
        ),
      ],
    );
  }
}