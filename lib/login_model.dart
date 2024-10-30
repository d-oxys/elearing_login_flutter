// lib/login_model.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginModel {
  String? _token;
  String? _accessToken;
  Map<String, dynamic>? _user;
  Map<String, dynamic>? _jobrole;
  Map<String, dynamic>? _division;

  String? get token => _token;
  String? get accessToken => _accessToken;
  Map<String, dynamic>? get user => _user;
  Map<String, dynamic>? get jobrole => _jobrole;
  Map<String, dynamic>? get division => _division;

  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://apps-api-dev.duapuluhtiga.com/api/v1/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nip': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _token = data['meta']['message']['token'];
      _accessToken = data['meta']['message']['AccessToken'];
      _user = data['result']['data']['user'];
      _jobrole = data['result']['data']['jobrole'];
      _division = data['result']['data']['division'];
      return true;
    } else {
      return false;
    }
  }
}
