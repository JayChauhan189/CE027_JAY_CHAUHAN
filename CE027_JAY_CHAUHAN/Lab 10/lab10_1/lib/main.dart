import 'package:flutter/material.dart';
//Importing the home.dart file..
import 'package:lag9/pages/home.dart';
import 'package:lag9/pages/loading.dart';
import 'pages/choose_location.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Home(),
    //  Setting the default path as home
    //  when the application is started '/home' would be the default path.
    //   initialRoute: '/home',
    //  In order to invoke Laoading() class Constructor..
      initialRoute: '/',
      routes: {
        // Assigning different routes for different path..
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      }
  ));
}