import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // Declaring the counter variable with value 0..
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // Executed every time the button is clicked..
    print("Build Function run in Choose Location");
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
      ),
      body: ElevatedButton(onPressed: (){
        setState((){
          // Incrementing the value of the counter on every button press by 1..
          counter+=1;
        });
      }, child: Text("Counter: $counter")),
    );
  }
}

