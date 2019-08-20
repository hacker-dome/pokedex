import 'package:flutter/material.dart';


void main() => runApp(MainApp());

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueGrey, accentColor: Colors.blue),
      home: Scaffold(
        body: PokedexScreen(),
      ),
    );
  }
}