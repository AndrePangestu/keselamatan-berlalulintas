import 'package:flutter/material.dart';
import 'package:keselamatan_berlalulintas/screen/car-screen.dart';
import 'package:keselamatan_berlalulintas/screen/motor-detail-screen.dart';
import 'package:keselamatan_berlalulintas/screen/motor-screen.dart';
import 'package:keselamatan_berlalulintas/screen/traffic-signs-screen.dart';

final routes = <String, WidgetBuilder>{
  '/motor-screen' : (BuildContext context) => new MotorScreen(),
  '/car-screen' :  (BuildContext context) => new CarScreen(),
  '/traffic-signs-screen' :  (BuildContext context) => new TrafficSignsScreen(),
  '/motor-detail-screen' :  (BuildContext context) => new MotorDetailScreen(),
};
