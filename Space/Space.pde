 Normal[] particle;

void setup() {
  size(500, 500); 
  particle = makeParticles(500);
}


void draw() {
  fill(255);
  background(0);
  for(Normal particles : particle){
    particles.move();
    particles.show();
  }
}

Normal[] makeParticles(int num){
   Normal particle[] = new Normal[num];
   for(int i = 0; i < particle.length; i++){
     particle[i] = new Normal();
   }
   
   return particle;
 }
 
 
