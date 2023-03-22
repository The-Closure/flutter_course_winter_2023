import 'dart:math';

Future<int> calculate() async {

  
  Future.delayed(Duration(seconds: 10), () {
    int x = 4;
    print(x);
    return x;
  });

  return 7;

  // Duration(seconds: 3);
  // int x = 5;
  // Duration(seconds: 2);
  // return Future.delayed(Duration(seconds: 5), () {
  //   int a = Random().nextInt(10);
  //   return a;
  // });
}
