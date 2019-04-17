import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/home/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Randm',
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}
