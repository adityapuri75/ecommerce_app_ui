import 'package:flutter/material.dart';

class AppBar extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          width: 250,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
