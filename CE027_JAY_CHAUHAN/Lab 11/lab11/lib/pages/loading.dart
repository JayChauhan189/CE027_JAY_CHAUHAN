import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lab_9_tut2/services/word_time.dart';
import 'dart:convert';

import 'package:lab_9_tut2/services/word_time.dart';

class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  ////internal state for a StatefulWidget.
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setWorldTime() async {
    WordTime timeinstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();
    // Defining Navigator
    // We can also pass the data in the form of Map within the argument...
    Navigator.pushReplacementNamed(context, "/home",arguments: {
      'location':timeinstance.location,
      'flag' : timeinstance.flag,
      'time': timeinstance.time,

    });
  }

  //Called when this object is inserted into the tree.
  void initState() {
    super.initState();
    //print("Init state in location file");
    print("Before getData()");
    setWorldTime();
    print("After getData()");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid (
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }
}
