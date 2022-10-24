



class eater {
 int myColor, mySpeed, mySize;
 int myX, myY;
 eater(){
   myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   mySize = (int)((Math.random()*20)+10);

   myX = width/2;
   myY = height/2;
 }
  eater(int x, int y){
   myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   mySize = (int)((Math.random()*20)+10);
  
   myX = x;
   myY = y;
 }
  void rise(){
    myX+= (int)(Math.random()*3)-1;
    myY -= (int)(Math.random()*3)-1;
  }
  void show(){
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }

}
eater[] bubs = new eater[100];
void setup(){
  size(400,400);
  for(int i = 0; i < bubs.length; i ++){
   bubs[i]= new eater((int)(Math.random()*400), (int)(Math.random()*400)); 
  }
}
void draw(){
   for(int i = 0; i < bubs.length; i ++){
   bubs[i].rise();
   bubs[i].show();
  }
}
