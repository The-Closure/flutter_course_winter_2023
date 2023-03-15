import 'dart:math';

Future<int> calculate() async {
  Duration(seconds: 3);
  int x = 5;
  Duration(seconds: 2);
  return Future.delayed(Duration(seconds: 5), () {
    int a = Random().nextInt(10);
    return a;
  });
}
