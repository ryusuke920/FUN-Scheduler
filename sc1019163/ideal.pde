void ideal() {
  background(180);//背景を鼠色
  int []w;
  for (int i=0; i<datax.length; i++) {
    fill(0);
    w=int(split(datax[i], ","));
    qh=new int[w.length-1];
    for (int j=1; j<w.length-1; j++) {
      qh[j-1]=w[j];
    }
    for (int t=0; t<datay.length; t++) {
      textSize(16);
      text(datay[t], 30, (t+1)*70+50);
    }
    graph(qh, 0, (i+1)*70);
  }

  fill(0);
  textSize(30);
  text("理想の生活習慣", 180, 95);
  colorMode(HSB);
  textSize(20);
  fill(0, 255, 255);
  rect(10, 10, 10, 10);
  text("自習", 25, 20);

  fill(26, 255, 255);
  rect(10, 30, 10, 10);
  text("授業", 25, 40);

  fill(52, 255, 255);
  rect(10, 50, 10, 10);
  text("睡眠", 25, 60);

  fill(78, 255, 255);
  rect(10, 70, 10, 10);
  text("ゲーム（趣味）", 25, 80);

  fill(104, 255, 255);
  rect(160, 10, 10, 10);
  text("大学", 175, 20);

  fill(130, 255, 255);
  rect(160, 30, 10, 10);
  text("部活", 175, 40);

  fill(156, 255, 255);
  rect(160, 50, 10, 10);
  text("風呂", 175, 60);

  fill(182, 255, 255);
  rect(230, 10, 10, 10);
  text("朝食", 245, 20);

  fill(208, 255, 255);
  rect(230, 30, 10, 10);
  text("昼食", 245, 40);

  fill(234, 255, 255);
  rect(230, 50, 10, 10);
  text("夜食", 245, 60);
  colorMode(RGB);//色彩を戻す
  //戻るボタン
  fill(128);//灰色
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(2);//枠の太さ
  rect(415, 570, 60, 40, 10);//灰色の四角形
  textSize(25);//フォントサイズ
  fill(255);//白色
  text("戻る", 422, 600);

  //マウスが乗ると色がつく
  //戻るの半透明
  if (mouseX>415&&mouseX<475)
  {
    if (mouseY>570&&mouseY<610)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(415, 570, 60, 40, 10);//戻るの上を白色の半透明
    }
  }

  //画面切り替え
  if (key==BACKSPACE&&keyPressed==true) {
    screen=0;
  }


  //ホーム画面への切り替え1
  if (mousePressed&&mouseX>415&&mouseX<475)
  {
    if (mouseY>570&&mouseY<610)
    {
      screen=0;
    }
  }
}
