class Settings {
  int noButts = 3;
  Button[] buttons = new Button[noButts]; 
  String[] buttonText = {"Go", "Set values", "Exit"};
  Settings() {
    for (int i = 0; i<noButts; i++) {
      buttons[i] = new Button(new PVector(width*0.5, height*(0.3*(i+1))), new PVector(width*0.2, height*0.1), buttonText[i]);
    }
  }
  void display() {
    background(0);
    for (int i = 0; i<noButts; i++) {
      buttons[i].display(); 
      buttons[i].hover();
    }
    clickCheck();
  }
  void clickCheck() {
    if (buttons[0].clicked()) {
      
    } else if (buttons[1].clicked()) {
      
    } else if (buttons[2].clicked()) {
      
    }
  }
}