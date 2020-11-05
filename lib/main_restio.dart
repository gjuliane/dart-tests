





import 'package:restio/restio.dart';

main(List<String> args) async {
  final endpoint = 'https://e.5fca91b6.WzhEeiZYcaolqXtRMnt79c4PR2YH4aQCmCnJYp2YVzI@develoment-kykemx.com/api/favorite';
  
  final client = Restio();

  Map payload = {};

  Headers headers = { 'Content-Type': 'application/json' }.asHeaders();

  final request = post(
    endpoint,
    body: '{}'.asBody(),
    headers: headers
  );

  final call = client.newCall(request);
  final response = await call.execute();
  print(response.body.string());
  
  await response.close();

}