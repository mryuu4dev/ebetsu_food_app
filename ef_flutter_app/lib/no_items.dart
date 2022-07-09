import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoItems extends StatelessWidget {
  const NoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 100,),
        Icon(
          CupertinoIcons.square_stack_3d_down_right,
          color: Colors.black12,
          size: 50,
        ),
        SizedBox(height: 10,),
        Text(
          '表示可能な情報なし',
          style: TextStyle(color: Colors.grey,),
        ),
      ],
    );
  }
}