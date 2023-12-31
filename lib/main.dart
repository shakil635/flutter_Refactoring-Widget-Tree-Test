import 'package:flutter/material.dart';
import 'package:flutter_book_chap5_q402/more_page.dart';

/*
Practice Question 2: Refactoring a Widget Tree for Improved Legibility
Task Description:
Refactor the widget tree in your Flutter application to improve legibility and maintainability. 
Extract repetitive or complex parts of the widget tree into separate reusable widgets. 
For instance, if there are multiple similar button designs or text styles, create a 
separate widget for these and reuse them in the main widget tree.
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Column(children: [ReusableTextStyle(), ReusableButton()]),
      ),
    );
  }
}

class ReusableButton extends StatefulWidget {
  const ReusableButton({super.key});

  @override
  State<ReusableButton> createState() => _ReusableButtonState();
}

class _ReusableButtonState extends State<ReusableButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoreAbout()),
            );
          },
          child: const Text("Learn more!")),
    );
  }
}

class ReusableTextStyle extends StatelessWidget {
  const ReusableTextStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blueGrey,
        child: const Card(
          margin: EdgeInsets.all(30),
          elevation: 15,
          shadowColor: Colors.grey,
          color: Color.fromARGB(255, 237, 224, 183),
          child: Center(
            child: Text(
                "New Year's Day is celebrated on January 1st by most countries around the world..."),
          ),
        ),
      ),
    );
  }
}
