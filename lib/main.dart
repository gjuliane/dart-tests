import 'dart:convert';

import 'package:http/http.dart' as http;
main(List<String> args) async{
  Map<String, dynamic> query = {
    "parameters[bid]": "34",
    "parameters[cid]": "1",
    "options[orderby][cid]": "ASC",
    "options[orderby][hid]": "ASC",
    "page": "0",
    "pagesize": "200"
  };

  final endpoint = 'https://e.5fc833fb.l5U4LWtsYOjwAcSEPfapjrhcynTiglGwbhDIbOs8hAY@develoment-kykemx.com/api/readed?';

  final queryParameters = Uri(queryParameters: query);
  // final queryParameters = json.encode(query);
  print("$endpoint${queryParameters.query}");
  final response = await http.get("$endpoint${queryParameters.query}", headers: {"Content-Type": "application/json"});

  print(queryParameters);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data);
  }
}
