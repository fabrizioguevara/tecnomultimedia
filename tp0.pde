// Tecnología Multimedial tp0
// Guevara, Fabrizio
// 91357/0

void setup(){

  size(600, 200);
  noLoop();

}

void draw(){
  
  background(#2F0752);
  noStroke();
  
  // Suelo
  
  fill(#654A6C);
  rectMode(CENTER);
  rect(300, 180, 600, 100);
  
  // Arena
  
  for(int i = 0; i < 900; i = i + 1){
    
    fill(#622B62);
    ellipse(random(600), random(140, 200), 1.2, 1.2);
  
  } 
  
  // Estrellas
  
  for(int i = 0; i < 350; i = i + 1){
  
    fill(#FFE0FF);
    ellipse(random(600), random(120), 1.5, 1.5);
  
  };
  
  // Luna
  
  fill(#FFFFBC); // Visible
  ellipse(300, 30, 50, 50);
  fill(#2F0752); // Invisible
  ellipse(290, 25, 47, 47);
  
  // Piramide
  
  fill(#D1C167); // Lado claro
  triangle(480, 200, 600, 80, 500, 130);
  fill(#7E7B6E); // Lado oscuro
  triangle(480, 200, 600, 80, 600, 600);
  
}
