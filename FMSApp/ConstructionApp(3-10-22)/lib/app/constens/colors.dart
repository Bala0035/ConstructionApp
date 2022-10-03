import 'package:flutter/material.dart';

colors(String value) {
  if (value.toUpperCase() == "APPROVED" ||
      value.toLowerCase() == "accepted" ||
      value.toLowerCase() == "dispatched" ||
      value.toLowerCase() == "returned") {
    return Colors.green;
  } else if (value.toLowerCase() == "pending") {
    return const Color.fromARGB(255, 162, 146, 0);
  }
}


Color apptheam =  const Color.fromARGB(255, 27, 40, 182);