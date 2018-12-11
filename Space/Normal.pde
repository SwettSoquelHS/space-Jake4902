public class Normal {
  double xpos;
  double ypos;
  int shade;
  double angle;
  double speed;
  
  Normal(){
    xpos = 0;
    ypos = 0;
    shade = (int)(Math.random()*250)+1;
    angle = Math.random()*(PI*2);
    speed = (Math.random()*10)+1;
  }
  void move(){
    xpos = xpos + Math.cos(angle)*speed;
    ypos = ypos + Math.sin(angle)*speed;
  }
  void show(){
    stroke(0);
    fill(shade);
    double w = width/2;
    double h = height/2;
    ellipse((float)(w+xpos), (float)(h+ypos), 10, 10);
  }
}
