//Guy Fieri is a Good Person

int time; 
PImage guy; 
PImage guy2; 
PImage guy3; 

void setup() { 
  size(500,500);  
  guy = loadImage("guy.png"); 
  guy2 = loadImage("guy2.jpg"); 
  guy3 = loadImage("guy3.jpg"); 
}

void draw() { 
  background(0); 
  
  //the good stuff
  imageMode(CENTER); 
  image(guy,250,250); 
  
  text("How long will it take you to love Guy Fieri?",20,20); 
  text("When you love him, click him!",20,40); 
  time = millis(); 
  
  if(mousePressed){ 
    println("It took you");
    println(time); 
    println("milliseconds to love Guy Fieri!"); 
  }
  
  if(mousePressed && time <= 20000){ 
    imageMode(CENTER); 
    image(guy2,250,250); 
    println("You will live well in Flavor Town!");
  }
  
  if(mousePressed && time >= 20000){
    imageMode(CENTER); 
    image(guy3,250,250); 
    println("Come on slowpoke! Look what you did to Grand Overlord Fiery!");
  }
    
  
}
  
  