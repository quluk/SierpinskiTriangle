int cocomelon=100;
int x=60;
public void setup()
{
size(1000,1000);

}
public void mousePressed()//optional
{
    cocomelon=(int)(Math.random()*10000);
    x+=10;
}
public void draw()
{
  
sierpinski(x,900,900,cocomelon);
}

public void sierpinski(int x, int y, int len, int colos) 
{
   
if (len<=20){
  fill(colos,colos,colos);
  triangle(x,y,x+len/2,y+len,x-len/2,y+len);
  
}
else{
  sierpinski(x,y,len/2,colos);
  sierpinski(x+len/2,y,len/2,colos);
  sierpinski(x+len/4,y-len/2,len/2,colos);
}
}
