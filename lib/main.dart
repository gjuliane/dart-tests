import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';

void main(List<String> args) async{

  final endpoint = 'https://develoment-kykemx.com/api/favorite';

  final username = 'e.5fca91b6.WzhEeiZYcaolqXtRMnt79c4PR2YH4aQCmCnJYp2YVzI';
  final password = '';
  final basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));

  final response = await http.post(
    endpoint,
    body: "{}",
    headers: <String, String> {
      'Content-Type': 'application/json',
      'Authorization': basicAuth
    }
  );

  // print(queryParameters);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data);
  }
  print(response.statusCode);
}
