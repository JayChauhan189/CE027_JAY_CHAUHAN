import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: Scaffold(
        // Scaffold class to provide the base where new widgets are to be added..
      appBar: AppBar(
        //Represents the App title where the menu, navigations will be displayed..
        // title property to provide title to the AppBar - Text() class is used
        // to provide value..
        title: const Text("Lab 6:Introduction",style: TextStyle(fontFamily: 'Combo')),
        // Center the Appbar title by using centerTitle Property..
        centerTitle: true,
      ),
      // Specify the body of the Appliacation using the body property which
      // accepts the Text() Class constructor..
      // We can align the body by wrappping it inside the Center() class -
      // Shortcut: alt+enter on Text() then select wrap with column option.
      body: const Center(child: Text("Body of the Application",style: TextStyle(fontFamily: 'Combo'))),
      // Change the Background color using BackgroundColor Property
      backgroundColor: Colors.yellowAccent,
      // Floating Button can be addded using the following property - onPressed:
      // is must for the FloatingActionButton() which specifies the action to be performed
      // whent the button is clicked..
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        child: const Text("+"),
      ),
    ),
  )
  );
}