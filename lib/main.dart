import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_course/DB/storage.dart';
import 'package:flutter_course/view/resources/color.dart';
import 'package:flutter_course/view/resources/text.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  // int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ReorderableListView(children: [
          for(int i = 0 ; i<4;i++)
        Dismissible(key: GlobalKey(),background: Container(color: Colors.red),child: ListTile(key: ValueKey(i),title: Text(mylist2[i]),))
        ],

           onReorder: (oldIndex, newIndex) {

            order(oldIndex,newIndex);
          
        },)
        );
  }
  
  void order(int oldIndex,int newIndex){
    setState(() {

      if(oldIndex<newIndex){
        newIndex--;
      }
     


       final tile = mylist2.removeAt(oldIndex);
       mylist2.insert(newIndex, tile);

    });
  }
}
