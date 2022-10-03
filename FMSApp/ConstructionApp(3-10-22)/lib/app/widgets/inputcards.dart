import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 3, child: Text(title, style: const TextStyle(fontSize: 18))),
          const Spacer(),
          const Input(),
        ],
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      flex: 2,
      child: Card(
        color: Colors.black,
        child: Card(
          elevation: 0,
          margin: EdgeInsets.all(1),
          color: Colors.white,
          child: Padding(
            padding:
                EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ID',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
