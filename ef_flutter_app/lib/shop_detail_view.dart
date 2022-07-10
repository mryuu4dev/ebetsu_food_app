import 'package:ef_graphql_client/ef_graphql_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShopDetailView extends StatelessWidget {
  const ShopDetailView({Key? key, required this.shop,}) : super(key: key);

  final GFetchShopListData_shops shop; 

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height * .9,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40,),
                    Text(
                      shop.name,
                      style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        shop.photo ?? 'http://placehold.jp/500x500.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Material(
                      child: Text(
                        shop.description?? '説明文が登録されていません',
                        style: const TextStyle(fontSize: 20, backgroundColor: Colors.white,),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Center(
                      child: CupertinoButton(
                        onPressed: () => Navigator.pop(context),
                        color: Theme.of(context).primaryColor,
                        child: const Text('もどる', style: TextStyle(color: Colors.white,)),
                      ),
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}