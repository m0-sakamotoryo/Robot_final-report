float baseH = 10;

float ladder1W = 5;
float ladder1D = 10;
float ladder1L = 30;

float ladder2W = 4;
float ladder2D = 8;
float ladder2L = 28;

float ladder3W = 3;
float ladder3D = 5;
float ladder3L = 25;


float angle0 = 0;
float angle1 = 90;
float l2 = 0;
float l3 = 0;

float dif = 0.8;


void setup(){
  size(800, 800, P3D);
  //background(255);
  
  camera(130, 130, 100, 0, 0, 0, 0, 0, -1);  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'o'){
      angle0 = angle0 + dif;
    }
    if(key == 'O'){
      angle0 = angle0 - dif;
    }
    if(key == 'a'){
      if(angle1 >= 0){
      angle1 = angle1 - dif;
      }
    }
    if(key == 'A'){
      if(angle1 <= 90){
      angle1 = angle1 + dif;
      }
    }
    if(key == 'b'){
      if(l2 <= 28){
      l2 = l2 + dif;
      }
    }
    if(key == 'B'){
      if(l2 >= 0){
      l2 = l2 - dif;
      }
    }
    if(key == 'c'){
      if(l3 <= 25){
      l3 = l3 + dif;
      }
    }
    if(key == 'C'){
      if(l3 >= 0){
      l3 = l3 - dif;
      }
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 90;
      l2 = 0;
      l3 = 0;
    }
  }
  
  //body
  pushMatrix();
  translate(25,0,0);
  fill(255,0,0);
  box(70,20,10);
  translate(25,0,10);
  fill(0);
  box(20,20,10);
  translate(0,0,5);
  fill(255,0,0);
  box(20,20,1);
  popMatrix();
  
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH);
  fill(250,0,0);
  box(10,10,baseH);
  
  //1st Ladder
  rotateY(radians(angle1));
  translate(0,0,baseH/2+ladder1L/2);
  fill(125);
  box(ladder1W,ladder1D,ladder1L);
  
  //2nd ladder  
  translate(0,0,l2);
  fill(175);
  box(ladder2W,ladder2D,ladder2L);
  
  //3rd ladder
  translate(0,0,l3);
  fill(200);
  box(ladder3W,ladder3D,ladder3L);
  
}
