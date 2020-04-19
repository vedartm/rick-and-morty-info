import 'package:flutter/material.dart';

import 'home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Randm',
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}
