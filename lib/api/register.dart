import 'dart:convert';
import 'package:http/http.dart' as http;

class register{
  String baseurl = "http://127.0.0.1:8000/api/register";
  Future<List> getUsers() async {
    try{
      var response = await http.get(Uri.parse(baseurl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
    } else {
      return Future.error("server error");
    }
    }catch(e){
      return Future.error(e);
  }
}
}