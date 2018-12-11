public class Oddball extends Normal {
  int red;
  int green;
  int blue;
  Oddball(){
    xpos = 10;
    ypos = 10;
    red = (int)(Math.random()*255)+1;
    green = (int)(Math.random()*255)+1;
    blue = (int)(Math.random()*255)+1;
    while(angle > PI){
      angle = Math.random()*(2*PI);
    }
    speed = (Math.random()*5)+2;
  }
  void move(){
    xpos += Math.cos(angle)*speed;
    ypos += Math.sin(angle)*speed;
  }
  void show(){
    stroke(0);
    fill(red, green, blue);
    double w = width/2;
    rect((float)(w+xpos), (float)(ypos), 15, 15);
    
  }
}
