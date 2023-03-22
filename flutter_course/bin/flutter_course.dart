import 'dart:convert';

import 'package:test/test.dart';

void main() {
  MyHanlder Tester = MyHanlder();

  try {
    int x = 9;
    var y = 9 / 0;
  } catch (exception) {
    throw Tester.message;
  }
}

class MyHanlder extends FormatException {

  @override
  String get message => 'This is an Error from MyHanlder';

  String get message1 => '';


}
