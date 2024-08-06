
import 'dart:convert';
import 'package:http/http.dart'as http;

class Api{

  static const String _baseUrl = 'https://petopia-server.vercel.app/api';

  static Future<bool> postSignin(Map<String, dynamic> body) async {
    try {
      final uri = Uri.parse('$_baseUrl/auth/user-signin');
      final response = await http.post(
        uri,
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Optionally, you can parse the response body if needed.
        // final responseData = jsonDecode(response.body);
        return true;
      } else {
        return false;
      }
    } on http.ClientException {
      return false;
    } catch (e) {
      return false;
    }
  }




  static Future<bool> postSignup(Map<String, dynamic> body) async {
    try {
      final uri = Uri.parse('$_baseUrl/auth/user-signup');
      final response = await http.post(
        uri,
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } on http.ClientException {
      return false;
    } catch (e) {
      return false;
    }
  }
  

// static Future<bool>updateNote(String id,Map body) async{
//   final url = 'https://api.nstack.in/v1/todos/$id';
//   final uri = Uri.parse(url);
//   final response = await http.put(uri, 
//   body:jsonEncode(body),
//   headers:{'Content-type':'application/json'},
//   );
//   return response.statusCode==200;
// }

// static Future<bool>deleteById(String id) async{
//   final url = 'https://api.nstack.in/v1/todos/$id';
//   final uri = Uri.parse(url);
//   final response = await http.delete(uri);
//   return response.statusCode==200;
// }
// static Future<bool>patchUpdate(String id,Map body)async{
//   final url='http://localhost:8080/api/$id';
//   final uri=Uri.parse(url);
//   final response=await http.patch(uri, 
//   body:jsonEncode(body),
//   headers:{'Content-type':'application/json'},
//   );
//   return response.statusCode==200;
// }
}
