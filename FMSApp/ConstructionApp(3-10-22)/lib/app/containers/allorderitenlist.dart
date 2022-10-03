import 'package:flutter/material.dart';

import '../constens/colors.dart';
import '../constens/strings.dart';
import '../widgets/detailsviewbutton.dart';


class AllOrderItemlist extends StatelessWidget {
  const AllOrderItemlist({Key? key, required this.list}) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:  list[0].length,
        itemBuilder: (context, i) {
          return Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        list[0][i]['orderId'],
                        style: const TextStyle(color: Colors.blue),
                      )),
                  Expanded(
                      flex: 2,
                      child: Text(
                        list[0][i]['status'],
                        style: TextStyle(color: colors(list[0][i]['status'])),
                      )),
                 
                  DetailsViewButton(list: list,i:i),
                  Expanded(flex: 2, child: Text(date(list[0][i]['createdAt']))),
                ],
              ));
        });
  }
}

