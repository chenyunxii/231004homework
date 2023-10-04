float sx=0, sy=0;
float easing=0.008;
float x=0, y=0;
float vx=19, vy=19;
void setup() {
  size(1700, 1200);
  smooth();
}
void draw() {
  float x01=200, x02=800, x3=1000, x04=1150, x5=1400;
  float y1=200, y02=330, y3=800, y04=1000;
  float xs1=x01+sx*0.3, x2=x02-sx*0.2, x4=x04+sx*0.3;
  float ys4=y04-sy, y2=y02+sy*0.3;
  float x1, y4;
  if (xs1<x3) {
    x1=xs1;
  } else {
    x1=x3;
  }
  if (ys4>y1) {
    y4=ys4;
  } else {
    y4=y1;
  }
  background(#19C1A9);
  noStroke();
  fill(#F0C9CF);
  rect(0, 0, x1, y1);
  rect(x3, y1, x4-x3, y4-y1);
  rect(x5, 0, width-x5, y2);
  fill(#6A4F76);
  rect(0, y3, x1, height-y3);
  rect(x4, y1, x5-x4, y2-y1);
  fill(#F2925A);
  rect(x1, y1, x2-x1, y3-y1);
  rect(x2, 0, x3-x2, y1);
  rect(x4, y4, width-x4, height-y4);
  stroke(#F2EFDF);
  strokeWeight(45);
  line(x1, 0, x1, width);
  line(0, y1, x5, y1);
  line(0, y3, x3, y3);
  line(0, y4, x1, y4);
  line(x3, 0, x3, height);
  line(x4, 0, x4, height);
  line(x5, 0, x5, y4);
  line(x3, y2, width, y2);
  line(0, y4, x1, y4);
  line(x3, y4, width, y4);
  line(x2, 0, x2, y3);
  line(0,y1,x4,y1);
  noStroke();
  fill(#F2925A);
  ellipse(x1, y1, 35, 35);
  ellipse(x4, y4, 35, 35);
  sx+=(mouseX-sx)*easing;
  sy+=(mouseY-sy)*easing;
  if ((245+x>=width)||(245+x<=0)){
    vx=vx*-1;
  }
  if ((245+x>=x4)||(245+x<=x1)){
    vx=vx*-1;
  }
  if ((30+y>=height)||(30+y<=0)) {
    vy=vy*-1;
  }
  fill(#6A4F76);
  ellipse(245+x, 30+y, 60, 60);
  x+=vx;
  y+=vy;
}
