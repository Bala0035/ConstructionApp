import 'package:flutter/material.dart';
import '../containers/allorderitenlist.dart';
import '../resorce/fetchdata/fetchorder.dart';
import '../widgets/heading.dart';



class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
            child: const Heading()),
        Expanded(
          child: FutureBuilder<List>(
              future: fetchdata(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  // ignore: avoid_print
                  print('error in loading${snapshot.error.toString()}');
                }
                if (snapshot.hasData) {
                  return AllOrderItemlist(
                    list: [snapshot.data],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ],
    );
  }
}

