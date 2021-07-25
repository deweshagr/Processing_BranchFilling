//<Integer> ind=new ArrayList<Integer>();
int inc=80;
PImage p;
int xval=int(800/inc);
int ind[][]=new int[xval][xval];
int counter=0;
PVector pos[][]=new PVector[xval][xval];
float f[][]=new float[xval][xval];
//ArrayList<PVector> pos=new ArrayList<PVector>();

//float pro[][]={{,0.5,0.8},{0.1,0.4,0.6},{0,0.2,0.3}};
void setup(){
  size(800,800);
  frameRate(20);
  background(250,250,250);
  //p=loadImage("bm.jpg");
  //loadPixels();
  ini();
  //int incc=int(p.width/xval);
  /*for(int i=0;i<xval;i++){
    for(int j=0;j<xval;j++){
      f[i][j]=red(p.pixels[(j*p.width+i)*incc]);
      noStroke();
      fill(f[i][j]);
      //ellipse(pos[i][j].x,pos[i][j].y,5,5);
    }
  }*/
  
  //noLoop();
}
void draw(){
  //updatePixels();
  int a=int(xval/2),b=a;
  ind[a][b]=0;
  if(counter>=20 || counter ==0){
    //background(255,255,0);
    noStroke();
    blendMode(NORMAL);
    fill(250,250,250,220);
    rect(0,0,width,height);
    ini();
    st(a,b,8,0);
    counter=1;
  }
  counter++;
  //saveFrame();
}
void ini(){
    //int incc=int(inc*(p.width/1000));
    for(int i=0;i<xval;i++){
    for(int j=0;j<xval;j++){
      ind[i][j]=1;
      //x=random(0,inc)-inc/2;
      //y=random(0,inc)-inc/2;
      pos[i][j]=new PVector((i*inc),(j*inc));
      //f[i][j]=red(p.pixels[(i*xval+j)*inc]);
      
    }
  }
}
void st(int x,int y, float stv,int c){
  if(x<=1 || x>=xval-1 || y<=1 || y>=xval-1)
  return;
  ArrayList<PVector> aa;
  /*int v1=0,v2=0;
  boolean isthere=true;
  int counter=0;*/
  aa=check(x,y);
  if(aa.size()<2)
  return;
  else{
    int ii=int(random(0,aa.size()-1));
    int xx=int(aa.get(ii).x);
    int yy=int(aa.get(ii).y);
    //blendMode(MULTIPLY);
    stroke(map(c,0,20,200,20),40,85);
    strokeWeight(inc/5);
    line(pos[x][y].x,pos[x][y].y,pos[xx][yy].x,pos[xx][yy].y);
    ind[xx][yy]=0;
    int x2=0,y2=0;
    aa=check(x,y);
    ii=int(random(0,aa.size()-1));
    x2=int(aa.get(ii).x);
    y2=int(aa.get(ii).y);
    line(pos[x][y].x,pos[x][y].y,pos[x2][y2].x,pos[x2][y2].y);
    ind[x2][y2]=0;
    st(xx,yy,stv-0.04,c+1);
    st(x2,y2,stv-0.04,c+1);
  }
  
  
  
  /*int v3=0,v4=0;
  boolean issthere=true;
  counter=0;
  while(issthere==true){
    v3=int(random(0,2))-1;
    v4=int(random(0,2))-1;
    if(ind[x+v3][y+v4]!=0 || counter>2)
    issthere=false;
    else 
    counter++;
  }
  ind[x+v3][y+v4]=0;
  stroke(map(stv,8,0,0,230));
  strokeWeight(stv);
  line(pos[x][y].x,pos[x][y].y,pos[x+v1][y+v2].x,pos[x+v1][y+v2].y);
  line(pos[x][y].x,pos[x][y].y,pos[x+v3][y+v4].x,pos[x+v3][y+v4].y);
  st(x+v1,y+v2,stv-0.1);
  st(x+v3,y+v4,stv-0.1);*/
}
ArrayList check(int x, int y){
  ArrayList<PVector> a=new ArrayList<PVector>();
  if(ind[x-1][y-1]==1)a.add(new PVector(x-1,y-1));
  if(ind[x-1][y]==1)a.add(new PVector(x-1,y));
  if(ind[x-1][y+1]==1)a.add(new PVector(x-1,y+1));
  if(ind[x][y-1]==1)a.add(new PVector(x,y-1));
  if(ind[x][y+1]==1)a.add(new PVector(x,y+1));
  if(ind[x+1][y-1]==1)a.add(new PVector(x+1,y-1));
  if(ind[x+1][y]==1)a.add(new PVector(x+1,y));
  if(ind[x+1][y+1]==1)a.add(new PVector(x+1,y+1));
  return a;
}

  
  
      
