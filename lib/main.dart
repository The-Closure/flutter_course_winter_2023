import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
int itemindex=0;
List<Widget> pages = [Container(color: Colors.red),Container(color: Colors.blue,)];

    return MaterialApp(
      home: Scaffold(
        body: pages[itemindex],
        bottomNavigationBar:NavigationBar(destinations: [NavigationDestination(icon: Icon(Icons.home
        ), label: 'Home'),NavigationDestination(icon: Icon(Icons.home
        ), label: 'Home')],)
      ),
    );
     }
}

// class SecondRoute extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(home: Scaffold(body: Center(child: Container(width: 400,height: 300,color: Colors.red,),),));
//   }
// }
