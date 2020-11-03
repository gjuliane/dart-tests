import 'dart:convert';

import 'package:http/http.dart';
main(List<String> args) {
  Map<String, dynamic> query = {
    "parameters[bid]": "34",
    "parameters[cid]": "1",
    "options[orderby][cid]": "ASC",
    "options[orderby][hid]": "ASC",
    "page": "0",
    "pagesize": "200"
  };

  final queryParameters = Uri(queryParameters: query);
  // final queryParameters = json.encode(query);
  print(queryParameters);
}
