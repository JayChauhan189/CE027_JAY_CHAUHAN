import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  //internal state for a StatefulWidget.
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  int counter = 0;

  Widget build(BuildContext context) {
    print("Build run in location file");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Choose Location"),
        centerTitle: true,
//The z-coordinate at which to place this app bar relative to its parent.
        elevation: 0,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       counter += 1;
      //     });
      //   },
      //   child: Text("Counter: $counter"),
      // ),
    );
  }
}
