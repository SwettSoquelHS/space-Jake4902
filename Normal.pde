class Normal {
  double xpos;
  double ypos;
  int color;
  double angle;
  double speed;
  
  Normal(){
    xpos = 0;
    ypos = 0;
    color = 150;
    angle = 2.85;
    speed = 4.5;
  }
  void move(){
    xpos += Math.cos(angle)*speed;
    ypos += Math.sin(angle)*speed;
  }
  void show(){
    
}
