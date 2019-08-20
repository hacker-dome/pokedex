import 'package:flutter/material.dart';

//import 'package:pokedex/src/page/hijo_page.dart';
//import 'package:pokedex/src/page/login_page.dart';
import 'package:pokedex/src/pokedex/pokedex_screen.dart';
import 'package:splashscreen/splashscreen.dart';



void main() => runApp(
    new MaterialApp(
      home:MyApp(),
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
        navigateAfterSeconds: new AfterSplash(),
        title: 
        new Text('POKEDEX 1568, By: Hacker Dome',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        
        image: new Image.asset('assets/pokedex.png'),

        backgroundColor: Colors.white70,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Hacker Dome"),
        loaderColor: Colors.red
    );
  }
}



class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     //appBar: new AppBar(
     //    title: new Text("Welcome In SplashScreen Package",
     //      style: new TextStyle(
     //        fontStyle: FontStyle.italic,
     //        color: Colors.black54
     //      ),
     //    ),
     //    automaticallyImplyLeading: false,
     //    backgroundColor: Colors.white70,
     //    centerTitle: true,
     //),
      body: PokedexScreen(),
    );
  }
}
