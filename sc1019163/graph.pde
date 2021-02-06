void graph(int []d, float x, float y) {
  int sum=0;
  int a=0;
  for (int i=0; i<d.length; i++) {
    print(i);
    print(":");
    print(d[i]);
    print(",");
    colorMode(HSB);
    fill(255);
    fill(i*26, 255, 255);
    stroke(0);//黒色の枠
    strokeWeight(1);//枠の太さ
    rect(x+sum, y+55, d[i], 20);
    sum+=d[i];
  }
  colorMode(RGB);
  println("sum:");
  println(sum);
}
