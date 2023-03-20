import 'package:test/test.dart';

void main() {
  int add(int x, {int a = 4, required int b}) {
    return a + b + x;
  }

  int x = 4;

  x == 5 ? print(add(x, a: 0, b: 4)) : print("Not Five");
}
