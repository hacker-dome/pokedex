import 'package:flutter/material.dart';

//import 'package:pokedex/src/page/hijo_page.dart';
//import 'package:pokedex/src/page/login_page.dart';
import 'package:pokedex/src/pokedex/pokedex_screen.dart';
import 'package:splashscreen/splashscreen.dart';



void main() => runApp(
    new MaterialApp(
      home:MainApp(),
      ));

    
    

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new MainApp(),
        title: new Text('Welcome In SplashScreen',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),

        image: new Image.asset('assets/pokedex.png'),

        backgroundColor: Colors.white70,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Cerbero Dev"),
        loaderColor: Colors.black45
    );
  }
}


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