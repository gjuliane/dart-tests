import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';

void main(List<String> args) async{

  final Map payload = {
    'page': '0',
    'pagesize': '200',
    'parameters': {
        'bid': '34',
        'cid': '1'
    },
    'options': {
        'orderby': {
            'cid': 'ASC',
            'hid': 'ASC'
        }
    }
};

  final endpoint = 'https://e.5fc833fb.l5U4LWtsYOjwAcSEPfapjrhcynTiglGwbhDIbOs8hAY@develoment-kykemx.com/api/readed/custom-index';


  // https://e.5fc833fb.l5U4LWtsYOjwAcSEPfapjrhcynTiglGwbhDIbOs8hAY@develoment-kykemx.com/api/readed?parameters[bid]=34&parameters[cid]=1&options[orderby][cid]=ASC&options[orderby][hid]=ASC&page=0&pagesize=200

  final response = await http.post(
    endpoint,
    body: json.encode(payload),
    headers: <String, String> { 'Content-Type': 'application/json' }
  );

  // print(queryParameters);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data);
  }
  print(response.statusCode);
}
