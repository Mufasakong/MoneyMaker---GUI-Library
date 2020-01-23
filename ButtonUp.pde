Knap k;
ArrayList<Knap> Bank = new ArrayList<Knap>();

  float positionX = 100; 
  float positionY = 100;
  float hojde = 50;
  float bredde = 100;
  int i = 0;

void setup() {
  size(500,500);
  rectMode(CENTER);
  textAlign(CENTER);
  k = new Knap();

}

void draw() {
   clear();
   background(250);
   k.tegnKnap();

}

void mouseReleased(){
        k.knapTrykket();
}

class Knap {
  

  
  void knapTrykket(){
    
    if ((mouseX<positionX+bredde/2)&&(mouseX>positionX-bredde/2)&&(mouseY>positionY-hojde/2)&&(mouseY<positionY+hojde/2)) 
    {
      println("100$ er tilføjet til din konto");
      i = i+ 100;
    }
    if ((mouseX<positionX+300+bredde/2)&&(mouseX>positionX+300-bredde/2)&&(mouseY>positionY-hojde/2)&&(mouseY<positionY+hojde/2)) 
    {
      println("100$ er fratrukket fra din konto");
    i = i- 100;
    }
      }
  
  void tegnKnap() {
   fill(0,200,0);
   rect(positionX,positionY, bredde, hojde); 
   fill(200,0,0);
   rect(positionX+300,positionY, bredde, hojde);
   fill(0);
   textSize(50);
   text(i+"$", width/2, height/2);
   fill(255);
   textSize(30);
   text("+100$", positionX, positionY);
   textSize(30);
   text("-100$", positionX+300, positionY);
  }
}
