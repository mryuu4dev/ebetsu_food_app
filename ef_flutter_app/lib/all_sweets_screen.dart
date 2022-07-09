import 'package:ef_flutter_app/no_items.dart';
import 'package:flutter/material.dart';

class AllSweetsScreen extends StatelessWidget {
  const AllSweetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(const [
            NoItems(),
          ]),
        ),
      ],
    );
  }
}