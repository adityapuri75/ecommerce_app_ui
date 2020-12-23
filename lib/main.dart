import 'package:alex/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Puri Fast Food",
        theme: ThemeData(
        primaryColor: Colors.white,

    ),
      home: MainScreen(),
    );

  }
}
