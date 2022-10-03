
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListCard extends StatelessWidget {
  ListCard({
    Key? key,
    required this.width,
    required this.mtrlvalue,
  }) : super(key: key);

  final double width;
  // ignore: prefer_typing_uninitialized_variables
  var mtrlvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: const Color.fromARGB(115, 184, 178, 178),
      margin: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 5),
      padding: const EdgeInsets.all(5),
      child: Text(
        mtrlvalue.toString(), textAlign: TextAlign.center,
        // style: TextStyle(color: Colors.white),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListTitle extends StatelessWidget {
  ListTitle({
    Key? key,
    required this.width,
    required this.title,
  }) : super(key: key);

  final double width;
  // ignore: prefer_typing_uninitialized_variables
  var title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      padding: const EdgeInsets.all(5),
      child: Text(
        title.toString(),
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// ignore: must_be_immutable
class Valcard extends StatelessWidget {
  Valcard({
    Key? key,
    required this.value,
  }) : super(key: key);

  String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.all(1),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
          child:
              Center(child: Text(value, style: const TextStyle(fontSize: 18))),
        ),
      ),
    );
  }
}
