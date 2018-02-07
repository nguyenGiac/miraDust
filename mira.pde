
float A = .3351;
float B = .99999999991;
float P = 1830; //controls the speed (how many generations are computed in one draw() loop)
float C = 2-(39*A);
float X = width; //starting point
float Y = height; //starting point
float W = A*X+C*X*X/(1+X*X);
int r , g  , b ,a, incr=1, incr1=1, incr2 = 1;


void setup(){
  size(2000,1000);
  background(255);
  smooth();
}

void draw(){
  //saveFrame("this17/######.png");
  for(int i = 1; i <= P; i++){

      fill(r,g,b,60); //it looks most interesting with lower opacity
      stroke(r,g,b,a);
      
      ellipse(X+width/2,Y+height/2,1,1);
    
      float Z = X;
      X = B * Y + W;
      float U = X * X;
      W = A * X + C * U / (1+U);
      Y = W -Z;
  }
  changeColor();
  
}
  
  //depending on where i place this function, each point, or each generation, has new color
  void changeColor(){
    incr += 1.6;
    incr1 += 1.3;
    incr2 += 1;
    r = int(map(sin(incr+20)*1,0,1,0,255));
    g = int(map(cos(incr1+10)*1,0,1,0,255));
    b = int(map(sin(incr2+30)*1,0,1,0,255));
  }
 
