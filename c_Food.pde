// Class for food

class Food {
  // Food will be randomly placed around the area
  // Radius will be different and the different sizes will replenish different amounts of hunger
  float xPos, yPos, diameter;
  float infectSeverity = random(1)<0.99?0:random(0, 0.2);
  // Boolean to check whether it's been eaten
  boolean eaten = false;
  Food(float _xPos, float _yPos, float _diameter) {
    xPos = _xPos;
    yPos = _yPos;
    diameter = _diameter;
  }
  void display(){
    // Food will be circles and will be blue
    // So easily distinguishable from the bacteria
    fill(0, 0, 255);
    ellipse(xPos, yPos, diameter, diameter);
    if(move){
      if(eaten == false && diameter < 25){
        diameter += diameter*0.001;
      }
    }
  }
}