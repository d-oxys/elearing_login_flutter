// lib/main.dart

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil LoginModel dari argumen
    final loginModel = ModalRoute.of(context)!.settings.arguments as LoginModel;

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User ID: ${loginModel.user?['id'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
            Text('Name: ${loginModel.user?['name'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
            Text('Email Kantor: ${loginModel.user?['email_kantor'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
            Text('Email Pribadi: ${loginModel.user?['email_pribadi'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
            Text('Phone Number: ${loginModel.user?['phone_number'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
            Text('Job Role: ${loginModel.jobrole?['jobrole'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
            Text('Division: ${loginModel.division?['name'] ?? 'N/A'}',
                style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
