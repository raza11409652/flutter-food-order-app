import 'package:flutter/material.dart';
import './screen/main_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zeego Food Order App",
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        backgroundColor: Colors.white
      ),
      home: MainScreen(),
    );
  }

}