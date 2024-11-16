// lib/home_page.dart

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'login_model.dart';
import 'main_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route == null || route.settings.arguments == null) {
      return Scaffold(
        body: Center(
          child: Text(
            'Login data not found. Please login again.',
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
        ),
      );
    }

    final loginModel = route.settings.arguments as LoginModel;

    return MainLayout(
      title: 'Home',
      loginModel: loginModel,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${loginModel.user?['name'] ?? 'N/A'}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                // Card untuk Job Role
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.teal, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.work, color: Colors.teal),
                            SizedBox(height: 4),
                            Text(
                              'Job Role',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${loginModel.jobrole?['jobrole'] ?? 'N/A'}',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Card untuk Division
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.teal, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.account_tree, color: Colors.teal),
                            SizedBox(height: 4),
                            Text(
                              'Division',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${loginModel.division?['name'] ?? 'N/A'}',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Card untuk Role
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.teal, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.security, color: Colors.teal),
                            SizedBox(height: 4),
                            Text(
                              'Role',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${loginModel.role?['name'] ?? 'N/A'}',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
