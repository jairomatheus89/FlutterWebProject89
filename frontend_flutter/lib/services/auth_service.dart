import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  Future <http.Response> createUser(String email, String username, String password){

    return http.post(
      Uri.parse("http://103.199.185.28:3000/register"),
      headers: <String, String>{
        "Content-Type": "application/json",
      },
      body: jsonEncode(<String, String>{'email': email, 'username': username, 'password': password})
    );
  }
}

