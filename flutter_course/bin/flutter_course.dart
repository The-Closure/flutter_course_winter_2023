void main(){
  Point origin = Point.origin();
  origin.position();
  origin.verticalMovement(10);
  origin.position();
  origin.horizentalMovement(4,'left');
  origin.position();
}

class Point{
  int? x;
  int y = 0;
  
  void _moveRight(int steps)
  {
      x = (x ?? 0) + steps; 
  }  
  
  void _moveLeft(int steps){
    x = (x ?? 0) - steps;
  }
  
  void _moveUp(int steps){
    y = y + steps;
  }
  
  void _moveDown(int steps){
    y = y - steps;
  }
  
  void position(){
    print('current position is x : $x , y : $y');
  }
  
  void horizentalMovement(int steps,[String direction = 'right']){
    if(direction == 'right'){
      _moveRight(steps);
    }else if(direction == 'left'){
      _moveLeft(steps);
    }else {
      throw Exception('not supported operation');
    }
  }
  
  void verticalMovement(int steps,[String direction = 'up']){
    if(direction == 'up'){
      _moveUp(steps);
    }else if(direction == 'down'){
      _moveDown(steps);
    }else {
      throw Exception('not supported operation');
    }
  }
  
  //Point(this.x, this.y);
  
  //Point(this.y,[this.x]);
  
  Point({required this.y,this.x});
  
  Point.origin(){
    x = 0;
    y = 0;
  }
  
  
}