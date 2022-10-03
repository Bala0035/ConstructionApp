import 'package:flutter/material.dart';

import '../constens/colors.dart';
import '../constens/strings.dart';
import '../widgets/detailsviewbutton.dart';


class ReturnItemlist extends StatelessWidget {
  final List list;

  const ReturnItemlist({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:  list[0].length,
        itemBuilder: (context, i) {
          if (list[0][i]['status'].toString().toLowerCase() == 'pending' ||
              list[0][i]['status'].toString().toLowerCase() == 'returned') {
            return Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Expanded(
                        flex: 2, child: Text(date(list[0][i]['createdAt']))),
                  ],
                ));
          } 
          else {
            return Container();
          }
        });
  }
}
