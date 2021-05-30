import 'package:flutter/material.dart';
import 'package:youtube_api/screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(url: 'https://www.youtube.com/watch?v=Dow1yxZzEn0&list=RDDow1yxZzEn0&start_radio=1',),
    );
  }
}

