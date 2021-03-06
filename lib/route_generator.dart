import 'package:alphaeventsflutter/Screens/Login/login.dart';
import 'package:alphaeventsflutter/Screens/Dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:alphaeventsflutter/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    //Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>Login());
      case '/dashboard':
         return MaterialPageRoute(builder: (_)=>Dashboard());

        //Validation of Correct data type
        // if(args is String){
        //   return MaterialPageRoute(
        //     builder:(_)=>Dashboard(
        //       // data:args,
        //     ),
        //   );
        // }
        //If args is not of the correct type, return an error page
        //You can also throw an exception while in development
        return _errorRoute();
        default:
        //If There is no such named route in the switch statement, e.g /third
        return _errorRoute();
    }
  }

static Route<dynamic> _errorRoute(){
  return MaterialPageRoute(builder: (_){
    return Scaffold(
      appBar:AppBar(
        title:Text('error'),
      ),
      body:Center(
        child:Text('error')
      )
    );
  });
}
}
