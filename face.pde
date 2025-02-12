void setup() {
  size(800, 600);
}

void draw(){
  background(#FFFFF7);
  face(300, 100, 0.6); //x, y
  face(350,200, 0.8);
  
   println(mouseX, mouseY);
}
 
void face(int x, int y, float s){
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(PI/-6);
  
  skin();
  hair();
  eye(250,200); //left
  eye(); //right
  mouth();
  

  popMatrix();
}

void hair(){
 strokeWeight(20);
 int x = 100;
 while (x <= 300) {
   line(x, 75, x, 150);
   x = x + 50;
 }
 strokeWeight(3);
}


void skin(){
  fill(#FFEDED);
  stroke(1);
  strokeWeight(1);
  rect(100, 150, 200, 150);
}



void eye(int x, int y){
  fill(#FAFAF5);
  ellipse(x,y,50,50);
  fill(0);
  circle(x,y,25);
  
}

void eye(){
  fill(#FAFAF5);
  ellipse(150,200,50,50);
  fill(0);
  circle(150,200,25);
  
}

void mouth(){
  fill(0);
  rect(175,250,50,50);
  rect(175,300,50,10);
  
  fill(#FF3142);
  rect(175,265,48.5,35);
}
