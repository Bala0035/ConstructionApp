
import 'package:flutter/material.dart';


class LogOut extends StatelessWidget {
  const LogOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);

        },
        child: const Icon(
          Icons.logout,
          size: 24.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
