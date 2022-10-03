import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Infocard extends StatelessWidget {
  Infocard({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

   String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 3, child: Text(title, style: const TextStyle(fontSize: 18))),
          const Spacer(),
          ValueCard(value: value)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ValueCard extends StatelessWidget {
   ValueCard({
    Key? key,
    required this.value,
  }) : super(key: key);

  String value;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Card(
        color: Colors.black,
        child: Card(
          elevation: 0,
          margin: const EdgeInsets.all(1),
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Center(
                child: Text(value, style: const TextStyle(fontSize: 18))),
          ),
        ),
      ),
    );
  }
}
