import 'package:flutter/material.dart';
// Importing the necessary packages for the http requests..
import '../services/word_time.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'Loading...';
  // void getData() async {
  //   //  Here, 1st message will be displayed ealier than the second message..
  //   // Which sometimes causes problem because it may be possible that the 1st message
  //   // is dependent on the second message..
  //
  //   // Future.delayed(Duration(seconds: 4),(){
  //   //   print("University Name: DDU");
  //   // });
  //   //
  //   // Future.delayed(Duration(seconds: 2),(){
  //   //   print("DDU is one of the best university..");
  //   // });
  //
  //   //Solution of the Problem Using Async await...
  //   // Here username will be printed along with bio..
  //   // Before printing the username first it will wait for the response of bio..
  //   // String username = await Future.delayed(Duration(seconds: 2),(){
  //   //   return "University Name: DDU";
  //   // });
  //   // String bio = await Future.delayed(Duration(seconds: 4),(){
  //   //   return "DDU is one of the best university in Guajrat..";
  //   // });
  //   // print('$username -> $bio');
  //
  //   // Parsing the url to get the JSON Data..
  //   // The response will be in the form map so in order to print it we will need map format.
  //
  //   // await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   // print(response.body);
  //   // To convert the JSON datqa into MAP format..
  //   // Map data = jsonDecode(response.body);
  //   // print(data);
  //   // print(data['title']);
  //
  //   // Parsing the url to get the json data from the API..
  //   Response response = await get(
  //       Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
  //   // Converting the JSON data into MAP format..
  //   Map timeData = jsonDecode(response.body);
  //   // Printing the entire timeData..
  //   print(timeData);
  //   // Extracting only the date part and offset part from the timeData..
  //   String dateTime = timeData['datetime'];
  //   String offset = timeData['utc_offset'];
  //   print(dateTime);
  //   print(offset);
  //   // Extracting Current time from the dateTime variable..
  //   DateTime currentTime = DateTime.parse(dateTime);
  //   print(currentTime);
  //   // Extracting the exact time in form of hours: minutes format..
  //   String offsetHours = offset.substring(1, 3);
  //   print(offsetHours);
  //   String offsetMinutes = offset.substring(4, 6);
  //   print(offsetMinutes);
  //   // Extracting and printing the current time..
  //   currentTime = currentTime.add(Duration(
  //       minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
  //   print(currentTime);
  // }
  void setWorldTime() async{
    WordTime timeinstance = WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();
    setState((){
      time = timeinstance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Init State function in choose location");
    setWorldTime();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Title"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(time.toString()),
      ),
    );
  }
}
