import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  height: 400,
                  width: 400,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Note : this app does nothin",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              "jfklsajfdfahklfhdsjlfhaljkhfdsaljfk\njdasldjsalkdskajdsa\njdksakldsjakdsajdsajd;sa\ndljskadlskajdlsadjksdakjds"),
                          TextButton(onPressed: () {}, child: Text("press me")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("press me")),
                          OutlinedButton(
                              onPressed: () {}, child: Text("press me"))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton:
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.check)),
        ));
  }
}
