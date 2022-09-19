import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Addding the SafeArea class instead of AppBar..
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
                onPressed: () {
                  // Mapping the choose_location.dart to button press event..
                  Navigator.pushNamed(context, "/location");
                },
                // Adding the loaction icon.
                icon: Icon(Icons.edit_location),
                // Providing the Label..
                label: Text("Edit Location")),
          ],
        ),
      ),
    );
  }
}
