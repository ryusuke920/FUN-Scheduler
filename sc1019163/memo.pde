void memo() {
  noStroke();//枠なし
  background(255);//背景白色

  //戻るについて
  stroke(255, 255, 0);//黄色
  strokeWeight(3);//枠の太さ
  noFill();//色なし
  rect(5, 20, 60, 40, 10);//黄色の枠
  textSize(25);//フォントサイズ
  fill(0);//黒色の文字
  text("戻る", 12, 50);

  //メモ帳について
  fill(0);//黒色
  textSize(80);//フォントサイズ
  text("メモ帳", 100, 75);

  textSize(35);//フォントサイズ
  for (int i=0; i<d.length; i++) {
    text( d[i], 20, 126+i*56 );
  }
  for (int i=0; i<5; i++) {
    stroke(0);//黒色の線
    line(0, 144+56*i, width, 144+56*i);//線
  }

  //マウスが乗ると色がつく
  //戻るの半透明
  if (mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(5, 20, 60, 40, 10);//戻るの上を白色の半透明
      noStroke();//枠なし
    }
  }

  //画面切り替え
  //ホーム画面の切り替え１
  if (mousePressed&&mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      screen=0;
    }
  }
}
