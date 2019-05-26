import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/screen/home-screen.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lalu Lintas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Keselamatan Berlalu Lintas'),
      routes: routes,
    );
  }
}
