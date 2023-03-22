// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test/test.dart';

void main() {
  Cars car1 = Cars(name: 'BMW', price: 200);

  car1.initprice(90.0);

  print(car1.fetchprice());
  
}

class MyHanlder extends FormatException {
  @override
  String get message => 'This is an Error from MyHanlder';

  String get message1 => '';
}

class Cars {
  String name;
  double price;
  Cars({
    required this.name,
    required this.price,
  });

  double fetchprice() {
    price = price * 0.6;

    return price;
  }

  double initprice(value) {
    price = value;
    return price;
  }
}
