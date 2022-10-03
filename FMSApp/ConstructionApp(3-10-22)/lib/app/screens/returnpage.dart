
import 'package:flutter/material.dart';
import '../containers/returnidemlist.dart';
import '../resorce/fetchdata/fetchorder.dart';
import '../widgets/heading.dart';


class Returnlist extends StatelessWidget {
  const Returnlist({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
            child: const Heading()),
        Expanded(
          flex: 7,
          child: FutureBuilder<List>(
              future: fetchdata(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  // ignore: avoid_print
                  print('error in loading ${snapshot.error.toString()}');
                }
                if (snapshot.hasData) {
                  return ReturnItemlist(
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


