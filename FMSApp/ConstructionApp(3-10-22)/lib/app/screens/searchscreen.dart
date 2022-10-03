import 'package:flutter/material.dart';
import '../constens/colors.dart';
import '../constens/strings.dart';
import '../resorce/fetchdata/fetchorder.dart';
import '../widgets/detailsviewbutton.dart';
import '../widgets/heading.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  
  String value;
  SearchScreen({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          print('error in loading ${snapshot.error.toString()}');
                        }
                        if (snapshot.hasData) {
                          return 
                          Search(

                            list: [snapshot.data],value: value,
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        }),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Search extends StatelessWidget {
  List list;
  String value;
  Search({Key? key, required this.list, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list[0].length,
        itemBuilder: (context, i) {
          if (list[0][i]['orderId'].toString() == value.toLowerCase() ||
              list[0][i]['orderId'].toString() == value.toUpperCase()) {
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
       } 
          else {
            return Container(
            );
          }
        });
  }
}

