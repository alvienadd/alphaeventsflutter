import 'package:alphaeventsflutter/Screens/Login/Login.dart';
import 'package:alphaeventsflutter/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
     onGenerateRoute:RouteGenerator.generateRoute,
    );
  }
}
