import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        /*appBar: AppBar(
        title: Text("Lab - 8 Tutorial 1"),
        centerTitle: true,
      ),
      // Padding can be added by using 2 ways:
      // 1. Padding class - using padding property
      // 2. passing property inside any container.
      body:
      //    Aim: Put all the BOx in one line.
      Row(
        // Setting the Main Axis at the center to start the putting the Childern
        // ELements at the center..
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // // Row is added to put the decending Container at the center X-axis
          // Row(),
          // Addding the multiple conatiners..
          // Use of Expanded Class to align the container at 1 line;
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(30),
              child: Text("Box1"),
            ),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(30),
            child: Text("Box2"),
          ),
          Container(
            color: Colors.purple,
            padding: EdgeInsets.all(30),
            child: Text("Box3"),
          )
           const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text("Tutorial 1 of lab 8"),
             ),
          // using padding property inside container.
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text("Tutorial 1 of lab 8"),
          )
        ],
      ),*/
        appBar: AppBar(
          title: Text('Lab - 8 First App'),
          centerTitle: true,
          backgroundColor: Colors.black45,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [
              Center(
                child: const CircleAvatar(
                  backgroundImage: AssetImage('image/pic1.jpg'),
                  radius: 70
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(color: Colors.black,),
              SizedBox(
                height: 10,
              ),

              Text(
                'NAME: ',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Jay Chauhan',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '20',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment:  MainAxisAlignment.start,
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.email_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text('jay189.chauhan@gmail.com',
                    style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 16.0,
                      letterSpacing: 1.5,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

