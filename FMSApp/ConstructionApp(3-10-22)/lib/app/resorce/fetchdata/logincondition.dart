import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../constens/strings.dart';

// ignore: non_constant_identifier_names
Future Login(String username, String password, context) async {
  final Uri uri = Uri.parse(loginAPI);
  final response = await http.get(uri);
  var datareceived = jsonDecode(response.body);
  String str = username;
  if (username == "" && password == "") {
    showAlertDialog(context, "USER Name or PASSWORD");
  // } else if (str == null) {
  //   showAlertDialog(context, "USER Name");
  // } else if (str == null) {
  //   showAlertDialog(context, "PASSWORD");
  } else {
    for (int i = 0; datareceived.length > i; i++) {
      if (datareceived[i]['userName'] == str &&
          datareceived[i]['password'] == password) {
        Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
        break;
      } else if (i == (datareceived.length - 1)) {
        showAlertDialog(context, "Correct USERNAME and PASSWORD");
      }
    }
  }

}

showAlertDialog(BuildContext context, String name) {
  AlertDialog alert = AlertDialog(
    content: Text("Enter $name"),
    
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
