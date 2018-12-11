public class Jumbo extends Normal {
  double xpos;
  double ypos;
  int red;
  int green;
  int blue;
  double angle;
  double speed;
  
  Jumbo(){
    xpos = 0;
    ypos = 0;
    red = (int)(Math.random()*255)+1;
    green = (int)(Math.random()*255)+1;
    blue = (int)(Math.random()*255)+1;
    angle = Math.random()*(PI*2);
    speed = (Math.random()*3)+1;
  }
  void move(){
    xpos = xpos + Math.cos(angle)*speed;
    ypos = ypos + Math.sin(angle)*speed;
  }
  void show(){
    stroke(0);
    fill(red,green,blue);
    double w = width/2;
    double h = height/2;
    ellipse((float)(w+xpos), (float)(h+ypos), 30, 30);
  }
}
