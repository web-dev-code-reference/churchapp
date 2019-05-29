import 'package:flutter/material.dart';
import 'package:churchapp/pages/home.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "hello",
      theme: new ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pink,
        
      ),
      home: new ChurchHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}


