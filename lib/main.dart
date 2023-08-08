import 'package:auth_flutter/screens/screens.dart';
import 'package:auth_flutter/services/services.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Flutter',
      initialRoute: 'login',
      routes: {        
        //'checking': ( _ ) => CheckAuthScreen(),
        'home'    : ( _ ) => HomeScreen(),        
        'login'   : ( _ ) => LoginScreen(),
        'register': ( _ ) => RegisterScreen(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.indigo
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
          elevation: 0
        )
      ),
    );
  }
}