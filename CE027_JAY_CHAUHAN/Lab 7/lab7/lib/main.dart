import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Lab 7"),
        ),
        // Adding Image to the body of the Application
        body: Column(
          children: [
            const Image(
              // Image can be added using the image Property..
              //AssestImage class constructor is used to specify the path of the image.
              image: AssetImage("assest/images/pic1.jpg"),
            ),
            // // Adding Icon to the Application using Icon Class
            // const Icon(
            //   Icons.flutter_dash,
            //   size: 100,
            //   color: Colors.blue,
            // ),

            //Elevated Button - The main characteristic these buttons hold is
            // the slight elevation in their surface towards the screen on
            // getting tapped by the user
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),

            // FlatButton - It is a text label material widget that
            // performs an action when the button is tapped. (Deprecated)
            FlatButton(
                onPressed: () {},
                child: Text("Flat Button"),
                color: Colors.yellowAccent),
            //
            // Icon Button - Button Which specifies the button label as well
            // as the icon and performas the given task when it is clicked
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.email),
              iconSize: 40,
              tooltip: "Send Me An Email",
            ),
            // TextButton: Simple Button without any border that listens for
            // onPressed and onLongPress gestures.
            TextButton(onPressed: () {}, child: Text("Text Button")),

            // Directionality: A widget that determines the ambient
            // directionality of text and text-direction-sensitive render objects.
            // Specifies the direction of the Text:
            Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.photo_camera),
                  label: Text("Gallery"),
                ))
          ],
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Text("+")),
      ),
    ),
  ));
}
