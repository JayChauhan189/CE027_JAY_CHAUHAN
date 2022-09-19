import 'package:flutter/material.dart';
import 'package:lab8_2/quote.dart';
import 'package:lab8_2/quote_card.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    //Creating a new Stateful Widget Class..
    home: EchoList(),
  ));
}

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  /*// List which Conatins different types of Quotes..
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right',
  //   'The purpose of our lives is to be happy.',
  //   "Get busy living or get busy dying."
  // ];*/
  // Creating Objects of the Quote Class...
  // And Assigning it to the list so that it could be iterable..
  List<Quote> quotes = [
    Quote(
        quote: 'The purpose of our lives is to be happy.',
        author: "Dalai Lama"),
    Quote(quote: 'Get busy living or get busy dying.', author: "Stephen King"),
    Quote(
        quote: '"You only live once, but if you do it right, once is enough."',
        author: "Mae West"),
  ];

  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote:quote);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab 8 - Tutorial 2"),
      ),
      body: Column(
          // Itreating the variable quotes to display the quotes and author name in to the screen..
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          // Defining the callback function which will be executed when button is clicked
          // in which we will remove the current selected quote..
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}



/*
// Creating a Stateful Widget Named FinalTest
class FinalTest extends StatefulWidget {
  @override
  State<FinalTest> createState() => _FinalTestState();
}

class _FinalTestState extends State<FinalTest> {
  // Intiliing the variable with the actual Age..
  // The datatype of the age variable is num..
  num age = 20;
  @override
  Widget build(BuildContext context) {

    // Adding the Scaffold Layout Manager..
    return Scaffold(
      backgroundColor: Colors.amberAccent,
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
            const Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('images/pic1.jpg'),
                  radius: 70
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(color: Colors.black,),
            const SizedBox(
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
              // Accessing the Value of the variable..
              // The actual value for the first time when the app is launched is 20..
              '$age',
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
      // Desgined 2 Floating Action Buttton which will increment or decrement the value of variqable..
      floatingActionButton: Wrap(
        children: [
          // Floating action buttton which will incrememt the value of the varaible..
          // When this button is pressed the age varaible is incrmented by 1..

          FloatingActionButton(
            onPressed: (){
              setState((){
                age+=1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
          ),
          SizedBox(width: 20,),
          // Floating action buttton which will decrement the value of the varaible..
          // When this button is pressed the age varaible is decrement by 1..

          FloatingActionButton(
            onPressed: (){
              setState((){
                age-=1;
              });
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );

  }
}*/
