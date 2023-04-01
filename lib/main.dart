import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          FloatingActionButton.extended(onPressed: () {}, label: Text("Next")),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            width: 290,
            height: 260,
            child: Icon(Icons.apple),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text("Shop everyThing\n just on tap",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.w600)),
          Text(
            "Hello world Hello world Hello world Hello world",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          )
        ]),
      ),
    ));
  }
}
