void clock() {
  //日本の時計
  background(0);
  s = second();
  m = minute() + (s/60);
  h = hour()%24 + (m/60);
  translate(width*1/4, height/6-45);//座標軸の設定（時計の中心）
  rotate(radians(180));
  pushMatrix();//現在の座標を保存
  fill(128);
  noStroke();
  for (int i=0; i<60; i++) {
    rotate(radians(6));
    ellipse(width/10, 0, 2, 2);//秒針の大きさ
  }
  for (int i=0; i<12; i++) {
    rotate(radians(30));
    ellipse(width/10, 0, 4, 4);//分針
  }
  popMatrix();//元の座標に戻す
  noFill();
  stroke(255, 0, 0);//秒針の色
  pushMatrix();//現在の座標を保存
  rotate(radians(s*(360/60)));//毎秒６℃ずつ秒針を移動
  strokeWeight(1);//秒針の太さ
  line(0, 0, 0, width/10-10);//秒針
  popMatrix();//元の座標に戻す
  stroke(255);//分針・時針の色
  pushMatrix();//現在の座標を保存
  rotate(radians(m*(360/60)));//毎分６℃ずつ分針を移動
  strokeWeight(2);//分針の太さ
  line(0, 0, 0, width/10-10);//分針
  popMatrix();//元の座標に戻す
  pushMatrix();//現在の座標を保存
  rotate(radians(h*(360/12)));//毎時３０℃ずつ時針を移動
  strokeWeight(4);//時針の太さ
  line(0, 0, 0, width/17.5);//時針
  popMatrix();//元の座標に戻す
  resetMatrix();//始点座標を初期化
  fill(255);//白色
  textSize(35);//フォントサイズ
  text("日本", width*1/4-40, height*1/3-60);
  String j=h+":"+nf(m, 2)+":"+nf(s, 2);//文字列の時間をint型に変換
  text(j, width*1/4-60, height*1/3-20 );//時刻の表示

  //ニューヨークの時計
  s = second();
  m = minute() + (s/60);
  h = (11+hour())%24- + (m/60);
  translate(width*3/4, height/6-45);//座標軸の設定
  rotate(radians(180));
  pushMatrix();
  fill(128);
  noStroke();
  for (int i=0; i<60; i++) {
    rotate(radians(6));
    ellipse(width/10, 0, 2, 2);//秒針
  }
  for (int i=0; i<12; i++) {
    rotate(radians(30));
    ellipse(width/10, 0, 3, 4);//分針
  }
  popMatrix();
  noFill();
  stroke(255, 0, 0);//秒針の色
  pushMatrix();
  rotate(radians(s*(360/60)));//毎秒６℃ずつ秒針を移動
  strokeWeight(1);//秒針の太さ
  line(0, 0, 0, width/10-10);//秒針
  popMatrix();
  stroke(255);//分針・時針の色
  pushMatrix();
  rotate(radians(m*(360/60)));//毎分６℃ずつ分針を移動
  strokeWeight(2);//分針の太さ
  line(0, 0, 0, width/10-10);//分針
  popMatrix();
  pushMatrix();
  rotate(radians(h*(360/12)));//毎時３０℃ずつ時針を移動
  strokeWeight(4);//時針の太さ
  line(0, 0, 0, width/17.5);//時針
  popMatrix();
  resetMatrix();//始点座標を初期化
  fill(255);//白色
  textSize(35);//フォントサイズ
  text("ニューヨーク", width*3/4-100, height*1/3-60);
  String n=h+":"+nf(m, 2)+":"+nf(s, 2);//文字列の時間をint型に変換
  text(n, width*3/4-60, height*1/3-20 );//時刻の表示

  //シドニーの時計
  s = second();
  m = minute() + (s/60);
  h = (1+hour())%24 + (m/60);
  translate(width*1/4, height*1/2-45);//座標軸の設定
  rotate(radians(180));
  pushMatrix();
  fill(128);
  noStroke();
  for (int i=0; i<60; i++) {
    rotate(radians(6));
    ellipse(width/10, 0, 2, 2);//秒針
  }
  for (int i=0; i<12; i++) {
    rotate(radians(30));
    ellipse(width/10, 0, 4, 4);//分針
  }
  popMatrix();
  noFill();
  stroke(255, 0, 0);//秒針の色
  pushMatrix();
  rotate(radians(s*(360/60)));//毎秒６℃ずつ秒針を移動
  strokeWeight(1);//秒針の太さ
  line(0, 0, 0, width/10-10);//秒針
  popMatrix();
  stroke(255);//分針・時針の色
  pushMatrix();
  rotate(radians(m*(360/60)));//毎分６℃ずつ分針を移動
  strokeWeight(2);//分針の太さ
  line(0, 0, 0, width/10-10);//分針
  popMatrix();
  pushMatrix();
  rotate(radians(h*(360/12)));//毎時３０℃ずつ時針を移動
  strokeWeight(4);//時針の太さ
  line(0, 0, 0, width/17.5);//時針
  popMatrix();
  resetMatrix();//始点座標を初期化
  fill(255);//白色
  textSize(35);//フォントサイズ
  text("シドニー", width*1/6-30, height*2/3-60);
  String sy=h+":"+nf(m, 2)+":"+nf(s, 2);//文字列の時間をint型に変換
  text(sy, width*1/6-20, height*2/3-20 );//時刻の表示

  //ロンドンの時計
  s = second();
  m = minute() + (s/60);
  h = (16+hour())%24 + (m/60);
  translate(width*3/4, height*1/2-45);//座標軸の設定
  rotate(radians(180));
  pushMatrix();
  fill(128);
  noStroke();
  for (int i=0; i<60; i++) {
    rotate(radians(6));
    ellipse(width/10, 0, 2, 2);//秒針
  }
  for (int i=0; i<12; i++) {
    rotate(radians(30));
    ellipse(width/10, 0, 4, 4);//分針
  }
  popMatrix();
  noFill();
  stroke(255, 0, 0);//秒針の色
  pushMatrix();
  rotate(radians(s*(360/60)));//毎秒６℃ずつ秒針を移動
  strokeWeight(1);//秒針の太さ
  line(0, 0, 0, width/10-10);//秒針
  popMatrix();
  stroke(255);//分針・時針の色
  pushMatrix();
  rotate(radians(m*(360/60)));//毎分６℃ずつ分針を移動
  strokeWeight(2);//分針の太さ
  line(0, 0, 0, width/10-10);//分針
  popMatrix();
  pushMatrix();
  rotate(radians(h*(360/12)));//毎時３０℃ずつ時針を移動
  strokeWeight(4);//時針の太さ
  line(0, 0, 0, width/17.5);//時針
  popMatrix();
  resetMatrix();//始点座標を初期化
  fill(255);//白色
  textSize(35);//フォントサイズ
  text("ロンドン", width*5/6-110, height*2/3-60);
  String r=h+":"+nf(m, 2)+":"+nf(s, 2);//文字列の時間をint型に変換
  text(r, width*5/6-100, height*2/3-20 );//時刻の表示

  //リオデジャネイロの時計
  s = second();
  m = minute() + (s/60);
  h = (12+hour())%24 + (m/60);
  translate(width*1/4, height*5/6-45);//座標軸の設定
  rotate(radians(180));
  pushMatrix();
  fill(128);
  noStroke();
  for (int i=0; i<60; i++) {
    rotate(radians(6));
    ellipse(width/10, 0, 2, 2);//秒針
  }
  for (int i=0; i<12; i++) {
    rotate(radians(30));
    ellipse(width/10, 0, 4, 4);//分針
  }
  popMatrix();
  noFill();
  stroke(255, 0, 0);//秒針の色
  pushMatrix();
  rotate(radians(s*(360/60)));//毎秒６℃ずつ秒針を移動
  strokeWeight(1);//秒針の太さ
  line(0, 0, 0, width/10-10);//秒針
  popMatrix();
  stroke(255);//分針・時針の色
  pushMatrix();
  rotate(radians(m*(360/60)));//毎分６℃ずつ分針を移動
  strokeWeight(2);//分針の太さ
  line(0, 0, 0, width/10-10);//分針
  popMatrix();
  pushMatrix();
  rotate(radians(h*(360/12)));//毎時３０℃ずつ時針を移動
  strokeWeight(4);//時針の太さ
  line(0, 0, 0, width/17.5);//時針
  popMatrix();
  resetMatrix();//始点座標を初期化
  fill(255);//白色
  textSize(30);//フォントサイズ
  text("リオデジャネイロ", width*1/2-240, height-60);
  textSize(35);//フォントサイズ
  String ri=h+":"+nf(m, 2)+":"+nf(s, 2);//文字列の時間をint型に変換
  text(ri, width*1/4-60, height-20 );//時刻の表示

  //エジプトの時計
  s = second();
  m = minute() + (s/60);
  h = (17+hour())%24 + (m/60);
  translate(width*3/4, height*5/6-45);//座標軸の設定
  rotate(radians(180));
  pushMatrix();
  fill(128);
  noStroke();
  for (int i=0; i<60; i++) {
    rotate(radians(6));
    ellipse(width/10, 0, 2, 2);//秒針
  }
  for (int i=0; i<12; i++) {
    rotate(radians(30));
    ellipse(width/10, 0, 4, 4);//分針
  }
  popMatrix();
  noFill();
  stroke(255, 0, 0);//秒針の色
  pushMatrix();
  rotate(radians(s*(360/60)));//毎秒６℃ずつ秒針を移動
  strokeWeight(1);//秒針の太さ
  line(0, 0, 0, width/10-10);//秒針
  popMatrix();
  stroke(255);//分針・時針の色
  pushMatrix();
  rotate(radians(m*(360/60)));//毎分６℃ずつ分針を移動
  strokeWeight(2);//分針の太さ
  line(0, 0, 0, width/10-10);//分針
  popMatrix();
  pushMatrix();
  rotate(radians(h*(360/12)));//毎時３０℃ずつ時針を移動
  strokeWeight(4);//時針の太さ
  line(0, 0, 0, width/17.5);//時針
  popMatrix();
  resetMatrix();//始点座標を初期化
  fill(255);//白色
  textSize(35);//フォントサイズ
  text("エジプト", width*5/6-110, height-60);
  String e=h+":"+nf(m, 2)+":"+nf(s, 2);//文字列の時間をint型に変換
  text(e, width*5/6-100, height-20 );//時刻の表示

  //画面６分割
  stroke(255);//線の色
  strokeWeight(1);//線の太さ
  line(0, height*1/3, width, height*1/3);//上の横線
  line(0, height*2/3, width, height*2/3);//下の横線
  line(width*1/2, 0, width*1/2, height);//縦線

  //戻るの表示の作成
  fill(0);//黒色
  stroke(255, 0, 0);//赤色
  strokeWeight(3);
  rect(5, 20, 60, 40, 10);//赤色の枠
  textSize(25);//フォントサイズ
  fill(255);//白色
  text("戻る", 12, 50);

  //マウスが乗ると色がつく
  //戻るの半透明
  if (mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      stroke(255, 0, 0);//赤色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(5, 20, 60, 40, 10);//戻るの上を白色の半透明
    }
  }

  //画面切り替え
  //ホーム画面への切り替え
  if (key==BACKSPACE&&keyPressed==true) {
    screen=0;
  }

  //ホーム画面への切り替え
  if (mousePressed==true&&mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      screen=0;
    }
  }
}
