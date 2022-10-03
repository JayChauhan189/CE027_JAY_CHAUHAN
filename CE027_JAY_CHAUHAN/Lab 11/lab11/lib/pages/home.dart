import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Defining data variable of type map which will receive the data from the loading page..
  Map<dynamic,dynamic> data = {};
  @override
  Widget build(BuildContext context) {
    // Data is received and stored inside the data variable.
    data = ModalRoute.of(context)?.settings.arguments as Map;
    // Data variable printed into the console to check whether there is any error or not..
    print(data);
    

    return Scaffold(

        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                //Navigator used to manage the child widget into the stack
                Navigator.pushNamed(context, "/location");
              },
              icon: Icon(Icons.edit_location),
              label: Text("Edit Location"),
            ),
            Center(
              child: Column(
                children: [
                  Text(data['location'],style: TextStyle(fontSize: 30),),
                  SizedBox(height: 20,),
                  Text(data['time'],style: TextStyle(fontSize: 50),),
                ],
              ),
            ),


          ],
        ),
      ),
    ));
  }
}
