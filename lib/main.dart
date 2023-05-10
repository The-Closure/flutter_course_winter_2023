// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/view/component/grey_button.dart';
import 'package:flutter_course/view/component/snackbar.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_course/DB/storage.dart';
import 'package:flutter_course/view/resources/color.dart';
import 'package:flutter_course/view/resources/text.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

List<String> mylist2 = [
  "Ahmad",
  "Omar",
  "Samir",
  "Wassem",
  "Ahmad",
  "Omar",
  "Samir",
  "Wassem",
  "Ahmad",
  "Omar",
  "Samir",
  "Wassem",
  "Ahmad",
  "Omar",
  "Samir",
  "Wassem",
  "Ahmad",
  "Omar",
  "Samir",
  "Wassem",
  "Ahmad",
  "Omar",
  "Samir",
  "Wassem"
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final pages = [
  Container(
    color: Colors.red,
  ),
  Container(
    color: Colors.blue,
  ),
  Container(
    color: Colors.green,
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  // int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: TextButton(
              child: Text("show snackbar"),
              onPressed: () {
              showModalBottomSheet(context: context, builder:(context) => Container(color: Colors.grey,height: 208,child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(decoration: InputDecoration(border: OutlineInputBorder())),
                  ),GreyButton(titleOfTheButton: 'Create Group',methodology: (){},)
                ],
              ),));
              
              //  Scaffold.of(context).showBottomSheet((context) => Container(color: Colors.grey,height: 400,));
              // Snackbars().MySnackBar(context);
              // showDatePicker(context: context, initialDate: DateTime(2006), firstDate: DateTime(2004), lastDate: DateTime(2010));
              }),
        ));
  }
}

