import 'package:flutter/material.dart';

import '../parts/LoginPartView.dart';

class AppView extends StatelessWidget {

  //Ini constructor
  const AppView({super.key});

  //Ini function override dari inherit StatelessWidget
  @override
  Widget build(BuildContext context) {
    //Material App buat definisiin default font family, font size
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 24.0),
          headline3: TextStyle(fontSize: 20.0),
          headline4: TextStyle(fontSize: 18.0),
          headline5: TextStyle(fontSize: 16.0),
          headline6: TextStyle(fontSize: 14.0),
          bodyText1: TextStyle(fontSize: 16.0),
          bodyText2: TextStyle(fontSize: 12.0),
          button: TextStyle(fontSize: 18.0),
          caption: TextStyle(fontSize: 12.0),
        ),
      ),
      //Langsung masuk ke halaman login ini
      home: const LoginView(), //<-- Ini
    );
  }
}