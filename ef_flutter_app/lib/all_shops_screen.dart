import 'package:ef_flutter_app/shop_list_tile.dart';
import 'package:flutter/material.dart';

class AllShopsScreen extends StatelessWidget {
  const AllShopsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              children: [
                for (int i = 0; i < 10; i++)
                  const ShopListTile(),
              ],
            )
          ]),
        ),
      ],
    );
  }
}