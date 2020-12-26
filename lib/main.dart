import 'package:flutter/material.dart';
import 'package:instagram_ui/landing/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI',
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.black
        ),
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),
          
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
