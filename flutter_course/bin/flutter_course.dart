import 'package:test/test.dart';

void main() {
  List<num> mylist = [1, 3, 4, 5, 6];

  // ! mylist func
  Map mymap = {'name': 'ahmad', 'age': 18, 'gander': 'male'};
  mylist.add(4);
  print(mylist);
  mylist.asMap();
  print(mylist);

  // ! mymap func

  mymap.forEach(
    (key, value) => print(value),
  );

  String x = mymap.toString();

  print(x.toUpperCase());

  mymap.updateAll((key, value) => key = 'size');
  print(mymap);
  // print(mymap['name']);


// ? test the switch case 
  // switch (mylist.length) {
  //   case 3:
  //     print(mylist[3]);
  //     break;
  //   case 4:
  //     print(mylist[4]);
  //     break;
  //   case 5:
  //     print('hello world');
  //     break;
  //   default:
  //     print(mylist[4]);
  // }

  
}
