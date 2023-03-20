import 'dart:convert';

import 'package:test/test.dart';

void main() {
  Line origin = Line.origin();
  // origin.position();
  // origin.verticalMovement(10);
  // origin.position();
  // origin.horizentalMovement(4, 'left');
  // origin.position();

  BreakLine oneLine = BreakLine(y: 4, x: 3);
  var res = oneLine.getAngle();
  print(res);

  origin._moveDown(14);
  print(origin.y);

  print(oneLine.toString());

  // print(object)
}

class Line {
  late int x;
  int y = 9;

  void _moveRight(int steps) {
    x = x + steps;
  }

  void _moveLeft(int steps) {
    x = x - steps;
  }

  void _moveUp(int steps) {
    y = y + steps;
  }

  void _moveDown(int steps) {
    y = y - steps;
  }

  void position() {
    print('current position is x : $x , y : $y');
  }

  void horizentalMovement(int steps, [String direction = 'right']) {
    if (direction == 'right') {
      _moveRight(steps);
    } else if (direction == 'left') {
      _moveLeft(steps);
    } else {
      throw Exception('not supported operation');
    }
  }

  void verticalMovement(int steps, [String direction = 'up']) {
    if (direction == 'up') {
      _moveUp(steps);
    } else if (direction == 'down') {
      _moveDown(steps);
    } else {
      throw Exception('not supported operation');
    }
  }

  Line({required this.y, required this.x});

  Line.origin() {
    x = 0;
    y = 0;
  }
}

class BreakLine extends Line {
  BreakLine({required super.y, required super.x});

  int z = 5;

  getAngle() {
    return x + y + z;
  }

  @override
  void _moveDown(int steps) {
    x = x - 3;
    y = y - 3;
    z = z - 3;
  }

  @override
  String toString() {
    return "{x:${x}+y:${y}+z:${z}}";
  }
}
