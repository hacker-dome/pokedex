import 'package:flutter/material.dart';

import 'package:pokedex/src/page/hijo_page.dart';
import 'package:pokedex/src/page/login_page.dart';



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