class Walker{
  int bro1,bro2;
  Walker(){
    bro1 = bro2 = 300;
  }
  void walk(){
    bro1= bro1+(int)(Math.random()*4)-2;
    bro2= bro2+ (int) (Math.random()*4)-2;
  }
  void show(){
    fill(225,225,225);
    ellipse (bro1,bro2,30,30);
  }
}

Walker [] bra;
void setup(){
size(500,500);
  bra = new Walker[20];
  for (int i=0;i<bra.length; i++){
  bra [i]= new Walker();
  }
}

void draw(){
 background (0,0,0);
 for(int i=0;i< bra.length;i++){
   bra[i].walk();
   bra[i].show();
 }
 void mousePressed(){
 for(int i=0;i<bra.length;i++){
 bra[i]=new Walker();
 }

}
