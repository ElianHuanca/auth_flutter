import 'package:auth_flutter/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
            title: Text('Home'),
            leading: IconButton(
              icon: Icon(Icons.login_outlined),
              onPressed: () {
                authService.logout();
                Navigator.pushReplacementNamed(context, 'login');
              },
            )));
  }
}
