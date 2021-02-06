void study() {
  background(0);//背景黒色
  //選択できる項目一覧
  fill(255);//白色
  textSize(30);//フォントサイズ
  text("勉強", 50, 420);//勉強の表示
  text("部活", 200, 420);//部活の表示
  text("趣味", 350, 420);//趣味の表示
  text("バイト", 40, 510);//バイトの表示
  text("食事", 200, 510);//食事の表示
  text("睡眠", 350, 510);//睡眠の表示
  text("交友", 50, 600);//交友の表示
  text("風呂", 200, 600);//風呂の表示
  text("その他", 340, 600);//その他の表示

  //選択できる項目の四角形と色付け
  noFill();//色なし
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(3);//枠の太さ
  rect(40, 380, 80, 60, 10);//勉強の四角形
  rect(190, 380, 80, 60, 10);//部活の四角形
  rect(340, 380, 80, 60, 10);//趣味の四角形
  rect(35, 470, 95, 60, 10);//バイトの四角形
  rect(190, 470, 80, 60, 10);//食事の四角形
  rect(340, 470, 80, 60, 10);//睡眠の四角形
  rect(40, 560, 80, 60, 10);//交友の四角形
  rect(190, 560, 80, 60, 10);//風呂の四角形
  rect(335, 560, 100, 60, 10);//その他の四角形

  //A.Mの５個の四角形

  //１つ目の四角形を作る準備をする
  if (mousePressed==true) {
    if( (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440)||(mouseX>190&&mouseX<270&&mouseY>380&&mouseY<440)||(mouseX>340&&mouseX<420&&mouseY>470&&mouseY<530 )) {
      count[0]=1;
    }
  }

  //グラフの中をクリックすることで、１つ目の四角形を作ることが出来るようになる
  if (count[0]==1&&mouseY>100&&mouseY<200&&mousePressed==true) {
    counta=15;//一つ目の四角形の始点のX座標
    countb=mouseX-15;//１つ目の四角形の横の長さ
    count[1]=1;
  }
  //１つ目の四角形を左に行き過ぎないようにする
  if (countb<15) {
    countb=0;
  }
  //１つ目の四角形を右に行き過ぎないようにする
  if (countb>450) {
    countb=450;
  }

  //１つ目の四角形をもう作れなくするのと同時に、２つ目の四角形を作る準備をする
  if (countb!=0) {
    if (mousePressed==true) {
      if ((mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440)||(mouseX>190&&mouseX<270&&mouseY>470&&mouseY<530)) {
        count[0]=0;
        count[1]=1;
      }
    }
  }

  //グラフの中をクリックすることで、２つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[1]==1&&mouseX>counta+countb&&mouseX<465) {
    countc=counta+countb;//２つ目の四角形の始点のX座標
    countd=mouseX;//二つ目の四角形の横の長さ
  }

  //２つ目の四角形が右に行き過ぎないようにする
  if (countd>465) {
    countd=465;
  }

  //２つ目の四角形をもう作れなくするのと同時に、３つ目の四角形を作る準備をする
  if (countd!=0&&mousePressed==true) {
    if ((mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440)||(mouseX>190&&mouseX<270&&mouseY>380&&mouseY<440)) {
      count[1]=0;
      count[2]=1;
    }
  }

  //グラフの中をクリックすることで、３つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[2]==1&&mouseX>counta+countb&&mouseX<465) {
    counte=countd;
    countf=mouseX;
  }

  //３つ目の四角形をもう作れなくするのと同時に、４つ目の四角形を作る準備をする
  if (countf!=0&&mousePressed==true) {
    if ((mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440)||(mouseX>190&&mouseX<270&&mouseY>380&&mouseY<440)) {//４つ目は部活
      count[2]=0;
      count[3]=1;
    }
  }

  //グラフの中をクリックすることで、４つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[3]==1&&mouseX>counta+countb&&mouseX<465) {
    countg=countf;
    counth=mouseX;
  }

  //４つ目の四角形をもう作れなくするのと同時に、５つ目の四角形を作る準備をする
  if (counth!=0&&mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[3]=0;
      count[4]=1;
    }
  }

  //グラフの中をクリックすることで、５つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[4]==1&&mouseX>counta+countb&&mouseX<465) {
    counti=counth;
    countj=mouseX;
  }

  //５つ目の四角形をもう作れなくするのと同時に、６つ目の四角形を作る準備をする
  if (countj!=0&&mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[4]=0;
      count[5]=1;
    }
  }

  //時間帯の白い四角形
  noStroke();//枠なし
  fill(255);//白色
  rect(15, 100, width-30, 100);//0:00~12:00の四角形
  rect(15, 250, width-30, 100);//12:00~24:00の四角形

  //A.Mの５個の四角の表示
  //１つ目の四角形
  fill(255, 0, 0, 100);//赤色の半透明
  rect(counta, 100, countb, 100);

  //２つ目の四角形
  fill(255, 255, 0, 100);//黄色の半透明
  rect(countc, 100, countd-countc, 100);

  //３つ目の四角形
  fill(0, 255, 0, 100);//緑色の半透明
  rect(counte, 100, countf-counte, 100);

  //４つ目の四角形
  fill(0, 255, 255, 100);//水色の半透明
  rect(countg, 100, counth-countg, 100);

  //５つ目の四角形
  fill(0, 0, 255, 100);//青色の半透明
  rect(counti, 100, countj-counti, 100);


  //P.Mの５個の四角形の表示

  //６つ目の四角形を作る準備をする
  if (mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[5]=1;
    }
  }

  //グラフの中をクリックすることで、６つ目の四角形を作ることが出来るようになる
  if (count[5]==1&&mouseY>250&&mouseY<350&&mousePressed==true) {
    countk=15;//６つ目の四角形の始点のX座標
    countl=mouseX-15;//６つ目の四角形の横の長さ
    count[6]=1;
  }
  //６つ目の四角形を左に行き過ぎないようにする
  if (countl<15) {
    countl=0;
  }
  //６つ目の四角形を右に行き過ぎないようにする
  if (countl>450) {
    countl=450;
  }

  //６つ目の四角形をもう作れなくするのと同時に、７つ目の四角形を作る準備をする
  if (countl!=0) {
    if (mousePressed==true) {
      if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
        count[5]=0;
        count[6]=1;
      }
    }
  }

  //グラフの中をクリックすることで、７つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[6]==1&&mouseX>countk+countl&&mouseX<465) {
    countm=countk+countl;//７つ目の四角形の始点のX座標
    countn=mouseX;//二つ目の四角形の横の長さ
  }

  //7つ目の四角形が右に行き過ぎないようにする
  if (countn>465) {
    countn=465;
  }

  //7つ目の四角形をもう作れなくするのと同時に、8つ目の四角形を作る準備をする
  if (countn!=0&&mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[6]=0;
      count[7]=1;
    }
  }

  //グラフの中をクリックすることで、8つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[7]==1&&mouseX>countk+countl&&mouseX<465) {
    counto=countn;
    countp=mouseX;
  }

  //8つ目の四角形をもう作れなくするのと同時に、9つ目の四角形を作る準備をする
  if (countp!=0&&mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[7]=0;
      count[8]=1;
    }
  }

  //グラフの中をクリックすることで、9つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[3]==1&&mouseX>countk+countl&&mouseX<465) {
    countq=countp;
    countr=mouseX;
  }

  //9つ目の四角形をもう作れなくするのと同時に、10つ目の四角形を作る準備をする
  if (countr!=0&&mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[8]=0;
      count[9]=1;
    }
  }

  //グラフの中をクリックすることで、10つ目の四角形を作ることが出来るようになる
  if (mousePressed==true&&count[9]==1&&mouseX>countk+countl&&mouseX<465) {
    counts=countr;
    countt=mouseX;
  }

  //10つ目の四角形をもう作れなくするのと同時に、11つ目の四角形を作る準備をする
  if (countt!=0&&mousePressed==true) {
    if (mouseX>40&&mouseX<120&&mouseY>380&&mouseY<440) {
      count[9]=0;
      count[10]=1;
    }
  }

  //P.Mの５個の四角の表示
  //6つ目の四角形
  fill(0, 0, 255, 100);//青色の半透明
  rect(countk, 250, countl, 100);

  //7つ目の四角形
  fill(0, 255, 255, 100);//水色の半透明
  rect(countm, 250, countn-countm, 100);

  //8つ目の四角形
  fill(0, 255, 0, 100);//緑色の半透明
  rect(counto, 250, countp-counto, 100);

  //9つ目の四角形
  fill(255, 255, 0, 100);//黄色の半透明
  rect(countq, 250, countr-countq, 100);

  //10つ目の四角形
  fill(255, 0, 0, 100);//赤色の半透明
  rect(counts, 250, countt-counts, 100);


  //時間の表示
  fill(255);//白色
  textSize(20);//フォントサイズ
  //上の方の時間表示
  text("0:00", 3, 95);//0:00の表示
  text("3:00", 111, 95);//3:00の表示
  text("6:00", 225, 95);//6:00の表示
  text("9:00", 336, 95);//9:00の表示
  text("12:00", 430, 95);//12:00の表示

  //下の方の時間表示
  text("12:00", 3, 245);//12:00の表示
  text("15:00", 106, 245);//15:00の表示
  text("18:00", 220, 245);//18:00の表示
  text("21:00", 330, 245);//21:00の表示
  text("24:00", 430, 245);//24:00の表示

  strokeWeight(1);//枠の太さ
  stroke(0);//白色
  for (int i=0; i<11; i++) {
    line(15+37.5+37.5*i, 100, 15+37.5+37.5*i, 200);//0:00~12:00の線
  }

  stroke(0, 0, 0, 100);//黒色の半透明
  for (int i2=0; i2<12; i2++) {
    line(-3.75+37.5+37.5*i2, 100, -3.75+37.5+37.5*i2, 200);//0:00~12:00の30分ごとの細線
  }
  stroke(0);//黒色
  for (int j=0; j<11; j++) {
    line(15+37.5+37.5*j, 250, 15+37.5+37.5*j, 350);//12:00~24:00の線
  }
  stroke(0, 0, 0, 100);//黒色の半透明
  for (int j2=0; j2<12; j2++) {
    line(-3.75+37.5+37.5*j2, 250, -3.75+37.5+37.5*j2, 350);//12:00~24:00の30分ごとの細線
  }

  fill(255);//白色
  textSize(30);//フォントサイズ
  text("やり直す", 100, 50);//やり直すの表示
  noFill();//色なし
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(3);//枠の太さ
  rect(93, 15, 130, 50, 10);//黄色の四角形の枠

  //やり直しをする機能
  if (mousePressed==true&&mouseX>93&&mouseX<223&&mouseY>15&&mouseY<65) {
    for (int i=0; i<count.length; i++) {
      count[i]=0;
      counta=0.0;//１つ目の四角形の始点のX座標
      countb=0.0;//１つ目の四角形の横の長さ
      countc=0.0;//２つ目の四角形の始点のX座標
      countd=0.0;//２つ目の四角形の横の長さ
      counte=0.0;//３つ目の四角形の始点のX座標
      countf=0.0;//３つ目の四角形の横の長さ
      countg=0.0;//４つ目の四角形の始点のX座標
      counth=0.0;//４つ目の四角形の横の長さ
      counti=0.0;//５つ目の四角形の始点のX座標
      countj=0.0;//５つ目の四角形の横の長さ
      countk=0.0;//６つ目の四角形の始点のX座標
      countl=0.0;//６つ目の四角形の横の長さ
      countm=0.0;//７つ目の四角形の始点のX座標
      countn=0.0;//７つ目の四角形の横の長さ
      counto=0.0;//８つ目の四角形の始点のX座標
      countp=0.0;//８つ目の四角形の横の長さ
      countq=0.0;//９つ目の四角形の始点のX座標
      countr=0.0;//９つ目の四角形の横の長さ
      counts=0.0;//１０つ目の四角形の始点のX座標
      countt=0.0;//１０つ目の四角形の横の長さ
    }
  }

  //戻るボタン
  fill(0);//黒色
  stroke(255, 0, 0);//赤色
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

  //やり直すの半透明
  if (mouseX>93&&mouseX<223)
  {
    if (mouseY>15&&mouseY<65)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(93, 15, 130, 50, 10);//戻るの上を白色の半透明
    }
  }

  //勉強の半透明
  if (mouseX>40&&mouseX<120)
  {
    if (mouseY>380&&mouseY<440)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(40, 380, 80, 60, 10);//戻るの上を白色の半透明
    }
  }

  //部活の半透明
  if (mouseX>190&&mouseX<270)
  {
    if (mouseY>380&&mouseY<440)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(190, 380, 80, 60, 10);//部活の上を白色の半透明
    }
  } 

  //趣味の半透明
  if (mouseX>340&&mouseX<420)
  {
    if (mouseY>380&&mouseY<440)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(340, 380, 80, 60, 10);//趣味の上を白色の半透明
    }
  }

  //バイトの半透明
  if (mouseX>35&&mouseX<130)
  {
    if (mouseY>470&&mouseY<530)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(35, 470, 95, 60, 10);//バイトの上を白色の半透明
    }
  }

  //食事の半透明
  if (mouseX>190&&mouseX<270)
  {
    if (mouseY>470&&mouseY<530)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(190, 470, 80, 60, 10);//食事の上を白色の半透明
    }
  }

  //睡眠の半透明
  if (mouseX>340&&mouseX<420)
  {
    if (mouseY>470&&mouseY<530)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(340, 470, 80, 60, 10);//睡眠の上を白色の半透明
    }
  }

  //交友の半透明
  if (mouseX>40&&mouseX<120)
  {
    if (mouseY>560&&mouseY<620)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(40, 560, 80, 60, 10);//交友の上を白色の半透明
    }
  }

  //風呂の半透明
  if (mouseX>190&&mouseX<270)
  {
    if (mouseY>560&&mouseY<620)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(190, 560, 80, 60, 10);//風呂の上を白色の半透明
    }
  }

  //その他の半透明
  if (mouseX>335&&mouseX<435)
  {
    if (mouseY>560&&mouseY<620)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(335, 560, 100, 60, 10);//その他の上を白色の半透明
    }
  }

  //画面切り替え
  if (key==BACKSPACE&&keyPressed==true) {
    screen=0;
  }

  //ホーム画面への切り替え1
  if (mousePressed&&mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      screen=0;
    }
  }
}
