 Normal[] particle;
 Oddball square;
 Jumbo bigBall;

void setup() {
  size(500, 500); 
  particle = makeParticles(1000);
  square = new Oddball();
  bigBall = new Jumbo();
}


void draw() {
  fill(255);
  background(0);
  for(Normal particles : particle){
    particles.move();
    particles.show();
  }
  square.move();
  square.show();
  
  bigBall.move();
  bigBall.show();
}

Normal[] makeParticles(int num){
   Normal particle[] = new Normal[num];
   for(int i = 0; i < particle.length; i++){
     particle[i] = new Normal();
     if(i % 75 == 0){
       particle[i] = new Oddball();
     }else if(i % 60 == 0){
       particle[i] = new Jumbo();
     }
   }
   
   return particle;
 }
 
 
