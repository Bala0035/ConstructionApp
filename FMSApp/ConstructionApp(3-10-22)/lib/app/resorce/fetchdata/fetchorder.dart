import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../constens/strings.dart';


Future<List> fetchdata() async {  
   final Uri uri = Uri.parse(orderAPI);
  final response = await http.get(uri);
  var datareceived = jsonDecode(response.body);
  return datareceived;
}

