import 'package:flutter/material.dart';

import '../screens/orderdetails.dart';

// ignore: must_be_immutable
class DetailsViewButton extends StatelessWidget {
   DetailsViewButton({
    Key? key,
    required this.list,
    required this.i
  }) : super(key: key);

  List list;
  int i;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DetailsCard(
                  id: list[0][i],
                ),
              ),
            );
          },
        ));
  }
}
