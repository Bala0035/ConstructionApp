import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(
                  flex: 3,
                  child: Text(
                    "Order ID",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Expanded(
                  flex: 2,
                  child: Text(
                    "Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Expanded(flex: 2, child: Center(child: Text(""))),
              Expanded(
                  flex: 2,
                  child: Text(
                    "Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
    );
  }
}