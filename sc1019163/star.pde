void star(int x, int y, int r, int prickleNum) {
  int vertexNum=prickleNum*2;//頂点数(トゲの数*2)
  int R;//中心点から頂点までの距離
  int outR=r; //中心点からトゲまでの距離
  int inR=outR/2;//中心点から谷までの距離

  pushMatrix();
  translate(x, y);
  rotate(radians(-90));
  beginShape();
  for (int i=0; i<vertexNum; i++) {
    if (i%2==0) {
      R=outR;
    } else {
      R=inR;
    }
    vertex(R*cos(radians(360*i/vertexNum)), R*sin(radians(360*i/vertexNum)));
  }
  endShape(CLOSE);
  popMatrix();
}
