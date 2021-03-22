void home() {
  //画面上のプログラミング
  noStroke();//枠なし
  fill(0);//黒色
  rect(0, 0, width, height*1/2);//左画面の背景
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(3);//枠の大きさ
  rect(width*1/100, 2, width*59/100, 58, 10);//年月日の枠
  rect(295, 2, 175, 58, 10);//時間の枠
  rect(25, 70, 80, 80, 10);//選択画面の左上の枠(勉強決め)
  rect(25, 170, 80, 80, 10);//選択画面の左下の枠(時間割)
  rect(130, 70, 80, 80, 10);//選択画面の真ん中の上の枠(メモ帳)
  rect(130, 170, 80, 80, 10);//選択画面の真ん中の下の枠(タイマー)
  rect(235, 70, 80, 80, 10);//選択画面の右上の枠(カレンダー)
  rect(235, 170, 80, 80, 10);//選択画面の右下の下の枠(課金)
  rect(340, 70, 130, 180, 10);//気温と湿度など。。。
  fill(255);//白色
  textSize(35);//フォントサイズ
  text(year()+"年"+month()+"月"+day()+"日", 20, 45);//年月日の表示
  s = second();
  m = minute() + (s/60);
  h = hour() + (m/60);
  String t=h+":"+nf(m, 2)+":"+nf(s, 2) ;//文字列の時間をint型に変換
  textSize(38);
  text(t, 310, 45);//時刻の表示

  //勉強について（左上）
  image(graph, 30, 76, 70, 70);
  //メモ帳について（真ん中の上）
  image(memo, 134, 77, 70, 70);//メモ帳のアイコン
  //カレンダーについて（右上）
  image(karennda, 241, 76, 70, 70);//カレンダーのアイコン
  //時間割について（左下）
  image(zikanwari, 30, 175, 70, 70);//時間割のアイコン
  //タイマーについて（真ん中の下）
  fill(255);//白色
  rect(130, 170, 80, 80, 10);
  image(timer, 137, 177, 70, 70);//タイマーのアイコン
  //ショップについて（右下）
  image(ikusei, 242, 175, 70, 70);//課金のアイコン
  //スクショについて（真ん中右下）
  image(camera, 435, 265, 50, 50);//カメラのアイコン

/*
  //函館の天気・気温などを表す
  fill(255);//白色
  textSize(16.5);//フォントサイズ
  text(tenki1, 342, 100);
  for (int i = 0; i < forecasts1.size(); i++) {
    JSONObject f = forecasts1.getJSONObject(i);
    String s = f.getString("dateLabel") + ":" + f.getString("telop");
    JSONObject o = f.getJSONObject("temperature");
    if (!o.isNull("min")) {
      String d = o.getJSONObject("min").getString("celsius");
      s = s + ", 最低:" + d;
    }
    if (!o.isNull("max")) {
      String d = o.getJSONObject("max").getString("celsius");
      s = s + ", 最高:" + d;
    }
    JSONObject im = f.getJSONObject("image");
    String imURL = im.getString("url");

    PImage img = loadImage(imURL);
    //３日間の天気の画像
    image(img, 400, 120+40*i, 50, 30);
    text("今日", 353, 142);
    text("明日", 353, 182);
    text("明後日", 345, 222);
  }
*/

  //星について
  fill(#FEFF05);//星の色
  star(25, 290, 20, 5);//星の表示
  fill(255, 255, 255, 100);//側近の予定
  noStroke();
  rect(45, 260, width-90, 60, 10);
  fill(255);//白色
  textSize(25);//フォントサイズ
  text("１言メモ：", 50, height*1/2-20);//テキスト表示
  textSize(30);//フォントサイズ
  text(d[0].substring(2, d[0].length()), 175, 305);//１行目の予定を表示
  //理想の予定に飛べる所に来たら、半透明にする
  if (mouseX>190&&mouseX<435) {
    if (mouseY>260&&mouseY<320) {
      fill(255, 255, 255, 75);//白色の半透明
      rect(190, 260, 245, 60, 10);//半透明の四角形
    }
  }

  //マウスを押しながらなら、文字を書くことが出来る
  if (mousePressed==true) {
    if (mouseX>190&&mouseX<435) {
      if (mouseY>260&&mouseY<320) {
        screen=2;
      }
    }
  }

  //スクリーンショットボタン
  noFill();//色なし
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(2);//枠の太さ
  rect(439, 268, 40, 40, 10);//スクリーンショットの四角形

  //半透明のプログラム
  if (mouseX>439&&mouseX<479) {
    if (mouseY>268&&mouseY<308) {
      fill(255, 255, 255, 75);//白色の半透明
      rect(439, 268, 40, 40, 10);//白色の半透明の四角形
    }
  }

  //スクリーンショット
  if (mouseX>439&&mouseX<479) {
    if (mouseY>268&&mouseY<308) {
      if (mousePressed==true) {
        screenshot();
      }
    }
  }

  //空のプログラミング
  //空のグラデーション
  noStroke();//枠なし
  color c3=color(#454633);//黒色
  color c4=color(#40BEEA);//青色
  for (Color=0; Color<height*1/2-160; Color+=5) {
    color c34=lerpColor(c3, c4, Color/300);
    fill(c34);
    rect(0, height*1/2+Color, width, 5);
  }

  //ペット所持数の表示
  fill(#FF43D7);//ピンク色
  textSize(18);//フォントサイズ
  text("現在飼っているペット数：", 10, 340);
  text(money, 230, 340);

  //ブロックのプログラミング
  strokeWeight(5);//枠の太さ
  stroke(0);//黒色の枠
  fill(#EA8B0E);//ブロックの色
  for (int bw=0; bw<12; bw++) {
    rect(block_w, height*3/4, 40, 40, 5);
    block_w+=40;
  }//ブロックの個数表示

  for (int bw1=0; bw1<12; bw1++) {
    line(block_w1, height*3/4+13, block_w1+40, height*3/4+13);
    block_w1+=40;
  }//ブロックの上の横線

  for (int bw2=0; bw2<12; bw2++) {
    line(block_w2, height*3/4+26, block_w2+40, height*3/4+26);
    block_w2+=40;
  }//ブロックの下の横線

  for (int bh1=0; bh1<12; bh1++) {
    line(block_h1+20, height*3/4, block_h1+20, height*3/4+13);
    block_h1+=40;
  }//ブロックの上の縦線

  for (int bh2=0; bh2<12; bh2++) {
    line(block_h2+13, height*3/4+13, block_h2+13, height*3/4+26);
    block_h2+=40;
  }//ブロックの真ん中の左の縦線

  for (int bh3=0; bh3<12; bh3++) {
    line(block_h3+26, height*3/4+13, block_h3+26, height*3/4+26);
    block_h3+=40;
  }//ブロックの真ん中の右の縦線

  for (int bh4=0; bh4<12; bh4++) {
    line(block_h4+20, height*3/4+26, block_h4+20, height*3/4+40);
    block_h4+=40;
  }//ブロックの下の縦線


  //なぜかブロックの画像を入れる羽目に...
  image(block, 0, 480, 40, 40);//１つ目のブロック
  image(block, 40, 480, 40, 40);//２つ目のブロック
  image(block, 80, 480, 40, 40);//３つ目のブロック
  image(block, 120, 480, 40, 40);//４つ目のブロック
  image(block, 160, 480, 40, 40);//５つ目のブロック
  image(block, 200, 480, 40, 40);//６つ目のブロック
  image(block, 240, 480, 40, 40);//７つ目のブロック
  image(block, 280, 480, 40, 40);//８つ目のブロック
  image(block, 320, 480, 40, 40);//９つ目のブロック
  image(block, 360, 480, 40, 40);//１０つ目のブロック
  image(block, 400, 480, 40, 40);//１１つ目のブロック
  image(block, 440, 480, 40, 40);//１２つ目のブロック

  //海のプログラミング
  noStroke();//枠なし
  fill(#1E3AE8);//海の青色
  rect(0, height*3/4+40, width, height*3/4-40);//海の背景




  //モンスターの表示について
  //モンスターの座標
  x1+=dx1;
  y1+=dy1;
  x2+=dx2;
  x3+=dx3;
  x4+=dx4;
  x5+=dx5;
  x6+=dx6;
  x7+=dx7;
  x8+=dx8;
  y8+=dy8;
  x9+=dx9;
  y9+=dy9;
  x10+=dx10;
  x11+=dx11;
  x12+=dx12;
  y12+=dy12;
  x13+=dx13;
  x14+=dx14;
  x15+=dx15;
  x16+=dx16;
  x17+=dx17;
  x18+=dx18;
  x19+=dx19;
  x20+=dx20;
  x21+=dx21;
  x22+=dx22;
  x23+=dx23;
  x24+=dx24;
  x25+=dx25;
  x26+=dx26;
  x27+=dx27;
  x28+=dx28;
  x29+=dx29;
  x30+=dx30;

  //小鳥の表示(1匹目)
  if (moneyCount[0]==2) {
    image(smallbird, x1, 350+y1, 50, 50);//ひよこの動き
  }
  //リスの表示(2匹目)
  if (moneyCount[1]==2) {
    image(risu, x2+200, 430, 50, 50);//リスの動き
  }
  //ネコの表示(3匹目)
  if (moneyCount[2]==2) {
    image(neko, -x3+100, 430, 50, 50);//ネコの動き
  }
  //うしの表示(4匹目)
  if (moneyCount[3]==2) {
    image(cow, -x4+200, 430, 50, 50);//うしの動き
  }
  //カニの表示(5匹目)
  if (moneyCount[4]==2) {
    image(kani, x5+100, 590, 70, 60);//カニの動き
  }

  //カバの表示(6匹目)
  if (moneyCount[5]==2) {
    image(kaba, x6+200, 550, 70, 60);//カバの動き
  }

  //イヌの表示(7匹目)
  if (moneyCount[6]==2) {
    image(inu, x7+350, 415, 70, 60);//イヌの動き
  }

  //カメの表示(8匹目)
  if (moneyCount[7]==2) {
    image(turtle, x8+350, 590+y8, 70, 60);//カメの動き
  }

  //チョウチョの表示(9匹目)
  if (moneyCount[8]==2) {
    image(tyou, -x9+250, 350+y9, 70, 60);//チョウチョの動き
  }

  //タヌキの表示(10匹目)
  if (moneyCount[9]==2) {
    image(tanuki, -x10+300, 415, 70, 60);//タヌキの動き
  }

  //キツネの表示(11匹目)
  if (moneyCount[10]==2) {
    image(kitune, x11+300, 415, 70, 60);//キツネの動き
  }

  //ハチの表示(12匹目)
  if (moneyCount[11]==2) {
    image(hati, x12+400, -y12+415, 70, 60);//ハチの動き
  }

  //パンダの表示(13匹目)
  if (moneyCount[12]==2) {
    image(panda, -x13+270, 405, 80, 70);//パンダの動き
  }

  //イルカの表示(14匹目)
  if (moneyCount[13]==2) {
    image(dolphin, -x14+270, 565, 80, 70);//イルカの動き
  }

  //カラスの表示(15匹目)
  if (moneyCount[14]==2) {
    image(karasu, -x15+60, 345, 70, 60);//カラスの動き
  }

  //トラの表示(16匹目)
  if (moneyCount[15]==2) {
    image(tora, -x16+160, 415, 70, 60);//トラの動き
  }

  //コアラの表示(17匹目)
  if (moneyCount[16]==2) {
    image(koara, x17+160, 420, 65, 55);//コアラの動き
  }

  //ウサギの表示(18匹目)
  if (moneyCount[17]==2) {
    image(usagi, x18+240, 427, 60, 50);//ウサギの動き
  }

  //ライオンの表示(19匹目)
  if (moneyCount[18]==2) {
    image(lion, x19+460, 420, 70, 60);//ライオンの動き
  }

  //ペンギンの表示(20匹目)
  if (moneyCount[19]==2) {
    image(pengin, -x20+170, 545, 50, 60);//ペンギンの動き
  }

  //クジラの表示(21匹目)
  if (moneyCount[20]==2) {
    image(kuzira, -x21+370, 540, 130, 120);//クジラの動き
  }

  //カメレオンの表示(22匹目)
  if (moneyCount[21]==2) {
    image(kamereon, -x22+380, 420, 65, 55);//カメレオンの動き
  }

  //ワニの表示(23匹目)
  if (moneyCount[22]==2) {
    image(wani, -x23+70, 540, 100, 80);//ワニの動き
  }

  //クマの表示(24匹目)
  if (moneyCount[23]==2) {
    image(kuma, x24+70, 380, 120, 100);//クマの動き
  }

  //タカの表示(25匹目)
  if (moneyCount[24]==2) {
    image(taka, -x25+210, 320, 100, 80);//タカの動き
  }

  //シャチの表示(26匹目)
  if (moneyCount[25]==2) {
    image(syati, -x26+450, 540, 120, 100);//シャチの動き
  }

  //サメの表示(27匹目)
  if (moneyCount[26]==2) {
    image(same, -x27+50, 540, 120, 100);//サメの動き
  }

  //オバケの表示(28匹目)
  if (moneyCount[27]==2) {
    image(obake, x28+320, 420, 150, 120);//オバケの動き
  }

  //ドラゴンの表示(29匹目)
  if (moneyCount[28]==2) {
    image(doragon, -x29+100, 170, 200, 150);//ドラゴンの動き
  }

  //ティラノサウルスの表示(30匹目)
  if (moneyCount[29]==2) {
    image(thiranosaurusu, -x30+400, 30, 300, 250);//ティラノサウルスの動き
  }

  //モンスターの座標の初期化
  //1匹目
  if (x1>width) {
    x1=0;
  } else if (x1<0) {
    x1=width;
  }

  if (y1+350>height-220) {
    y1=0;
  } else if (y1+350<300) {
    y1=height;
  }

  //2匹目
  if (x2+200>width) {
    x2=-200;
  } else if (x2+200<0) {
    x2=width;
  }

  //3匹目
  if (-x3+100<0) {
    x3=100-width;
  }

  //4匹目
  if (-x4+200<0) {
    x4=200-width;
  }

  //5匹目
  if (x5+100>width) {
    x5=-100;
  }

  //6匹目
  if (x6+200>width) {
    x6=-200;
  }

  //7匹目
  if (x7+350>width) {
    x7=-350;
  }

  //8匹目
  if (x8+350>width) {
    x8=-350;
  }

  if (y8+590>height) {
    y8=-80;
  }

  //9匹目
  if (-x9+250<0) {
    x9=250-width;
  }

  if (y9+350>height-230) {
    y9=-35;
  }

  //10匹目
  if (-x10+300<0) {
    x10=300-width;
  }


  //11匹目
  if (x11+300>width) {
    x11=-300;
  }

  //12匹目
  if (x12+400>width) {
    x12=-400;
  }

  if (-y12+415<320) {
    y12=-10;
  }

  //13匹目
  if (-x13+270<0) {
    x13=270-width;
  }

  //14匹目
  if (-x14+270<0) {
    x14=270-width;
  }

  //15匹目
  if (-x15+60<0) {
    x15=60-width;
  }

  //16匹目
  if (-x16+160<0) {
    x16=160-width;
  }

  //17匹目
  if (x17+160>width) {
    x17=-160;
  }

  //18匹目
  if (x18+240>width) {
    x18=-240;
  }

  //19匹目
  if (x19+460>width) {
    x19=-460;
  }

  //20匹目
  if (-x20+170<0) {
    x20=170-width;
  }

  //21匹目
  if (-x21+370<0) {
    x21=370-width;
  }

  //22匹目
  if (-x22+380<0) {
    x22=380-width;
  }

  //23匹目
  if (-x23+70<0) {
    x23=70-width;
  }

  //24匹目
  if (x24+70>width) {
    x24=-70;
  }

  //25匹目
  if (-x25+210<0) {
    x25=210-width;
  }

  //26匹目
  if (-x26+450<0) {
    x26=450-width;
  }

  //27匹目
  if (-x27+50<0) {
    x27=50-width;
  }

  //28匹目
  if (x28+320>width) {
    x28=-320;
  }

  //29匹目
  if (-x29+100<0) {
    x29=100-width;
  }

  //30匹目
  if (-x30+550<0) {
    x30=400-width;
  }
  //マウスが乗ると色がつく
  //時計表示の半透明
  if (mouseX>295&&mouseX<470)
  {
    if (mouseY>2&&mouseY<60)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(295, 2, 175, 58, 10);//時計の上を白色の半透明
    }
  }  

  //左上の表示の半透明
  if (mouseX>25&&mouseX<105)
  {
    if (mouseY>70&&mouseY<150)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(25, 70, 80, 80, 10);//時計の上を白色の半透明
    }
  }  

  //真ん中の上の表示の半透明
  if (mouseX>130&&mouseX<210)
  {
    if (mouseY>70&&mouseY<150)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(130, 70, 80, 80, 10);//時計の上を白色の半透明
    }
  }  

  //右上の表示の半透明
  if (mouseX>235&&mouseX<315)
  {
    if (mouseY>70&&mouseY<150)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(235, 70, 80, 80, 10);//時計の上を白色の半透明
    }
  }  

  //左下の表示の半透明
  if (mouseX>25&&mouseX<105)
  {
    if (mouseY>170&&mouseY<250)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(25, 170, 80, 80, 10);//時計の上を白色の半透明
    }
  }  

  //真ん中の下の表示の半透明
  if (mouseX>130&&mouseX<210)
  {
    if (mouseY>170&&mouseY<250)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(130, 170, 80, 80, 10);//時計の上を白色の半透明
    }
  }  

  //右下の表示の半透明
  if (mouseX>235&&mouseX<315)
  {
    if (mouseY>170&&mouseY<250)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(235, 170, 80, 80, 10);//時計の上を白色の半透明
    }
  }  

  //気温と湿度の表示の半透明
  if (mouseX>340&&mouseX<470)
  {
    if (mouseY>70&&mouseY<250)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(340, 70, 130, 180, 10);//時計の上を白色の半透明
    }
  }  

  //画面切り替え
  //勉強への画面切り替え
  if (mousePressed==true&&mouseX>25&&mouseX<105)
  {
    if (mouseY>70&&mouseY<150)
    {
      screen=1;
    }
  }

  //メモ帳への画面切り替え
  if (mousePressed==true&&mouseX>130&&mouseX<210)
  {
    if (mouseY>70&&mouseY<150)
    {
      screen=13;
    }
  }

  //カレンダーへの画面切り替え
  if (mousePressed==true&&mouseX>235&&mouseX<315)
  {
    if (mouseY>70&&mouseY<150)
    {
      screen=3;
    }
  }

  //時間割表への画面切り替え
  if (mousePressed&&mouseX>25&&mouseX<105)
  {
    if (mouseY>170&&mouseY<250)
    {
      screen=4;
    }
  }

  //未定への画面切り替え
  if (mousePressed&&mouseX>130&&mouseX<210)
  {
    if (mouseY>170&&mouseY<250)
    {
      screen=5;
    }
  }

  //ショップへの画面切り替え
  if (mousePressed&&mouseX>235&&mouseX<315)
  {
    if (mouseY>170&&mouseY<250)
    {
      screen=6;
    }
  }

  //未定への画面切り替え
  if (mousePressed&&mouseX>340&&mouseX<470)
  {
    if (mouseY>70&&mouseY<250)
    {
      screen=7;
    }
  }

  //時計への画面切り替え
  if (mousePressed&&mouseX>295&&mouseX<470)
  {
    if (mouseY>2&&mouseY<60)
    {
      screen=8;
    }
  }
}
