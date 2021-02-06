void timetable4() {
  //後半の時間割設計
  background(0);//背景
  fill(255);//白色
  textSize(30);//フォントサイズ
  text("2019年度  時間割", 75, 50);//半角スペース2個
  fill(0);//黒色
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(3);//枠の太さ
  rect(320, 5, 150, 65, 10);
  textSize(40);//フォントサイズ
  fill(255);//白色
  text("後 半", 350, 55);
  fill(0);//黒色
  stroke(255, 0, 0);//赤色
  rect(5, 20, 60, 40, 10);//赤色の枠
  textSize(25);//フォントサイズ
  fill(255);//白色
  text("戻る", 12, 50);

  //時間割表の線作成
  fill(0);//大枠をrect表示のため
  stroke(255);//線の色
  strokeWeight(1);
  rect(5, 80, 470, 400);//時間割の大枠
  line(5, 80+400/6*1, 475, 80+400/6*1);//横１本目の線
  line(5, 80+400/6*2, 475, 80+400/6*2);//横２本目の線
  line(5, 80+400/6*3, 475, 80+400/6*3);//横３本目の線
  line(5, 80+400/6*4, 475, 80+400/6*4);//横４本目の線
  line(5, 80+400/6*5, 475, 80+400/6*5);//横５本目の線
  line(35, 80, 35, 480);//例外の１本目の縦線
  line(120, 80, 120, 480);//例外の２本目の縦線
  line(120+350/5*1, 80, 120+350/5*1, 480);//縦１本目の線
  line(120+350/5*2, 80, 120+350/5*2, 480);//縦２本目の線
  line(120+350/5*3, 80, 120+350/5*3, 480);//縦３本目の線
  line(120+350/5*4, 80, 120+350/5*4, 480);//縦４本目の線
  line(5, 80, 35, 145);//左上のバツ印１
  line(5, 145, 35, 80);//左上のバツ印２
  line(35, 80, 120, 145);//左上の斜めの線

  //時間・曜日の表示
  //時間について
  fill(255);//テキストの白色
  textSize(25);//フォントサイズ
  text("１", 7, 190);//１限目
  text("２", 7, 255);//２限目
  text("３", 7, 320);//３限目
  text("４", 7, 385);//４限目
  text("５", 7, 455);//５限目
  text("時間", 35, 140);//"時間"の表示
  text("9:00", 55, 170);//１限目の時間表示１
  text("⋮", 70, 190);//１限目の時間表示２
  text("10:30", 45, 210);//１限目の時間表示３
  text("10:40", 45, 235);//２限目の時間表示１
  text("⋮", 70, 255);//２限目の時間表示２
  text("12:10", 45, 275);//２限目の時間表示３
  text("13:10", 45, 300);//３限目の時間表示１
  text("⋮", 70, 320);//３限目の時間表示２
  text("14:40", 45, 340);//３限目の時間表示３
  text("14:50", 45, 365);//４限目の時間表示１
  text("⋮", 70, 385);//４限目の時間表示２
  text("16:20", 45, 405);//４限目の時間表示３
  text("16:30", 45, 435);//５限目の時間表示１
  text("⋮", 70, 455);//５限目の時間表示２
  text("18:00", 45, 475);//５限目の時間表示３

  //曜日について
  text("曜日", 70, 105);//"曜日"の表示
  textSize(35);//フォントサイズ
  fill(#FF5FF5);//ピンク色
  text("月", 140, 125);//月曜日
  fill(#FF001E);//赤色
  text("火", 210, 125);//火曜日
  fill(#00FFF0);//水色
  text("水", 280, 125);//水曜日
  fill(#29FF00);//緑色
  text("木", 350, 125);//木曜日
  fill(#FEFF00);//黄色
  text("金", 420, 125);//金曜日

  //下のコマンドについて
  fill(0);//rect表示のため黒色
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(3);//枠の太さ
  rect(20, 520, 90, 90, 10);//前半クラスのコマンドの表示
  rect(135, 520, 90, 90, 10);//中間クラスのコマンドの表示
  rect(250, 520, 90, 90, 10);//後半クラスのコマンドの表示
  rect(365, 520, 90, 90, 10);//予定合わせのコマンドの表示
  fill(255);//字の白色
  text("前 半", 25, 580);
  text("中 間", 140, 580);
  text("自 分", 255, 580);
  text("選 択", 370, 580);

  //後半の時間割表示
  fill(255);//文字の色
  //月曜日の後半の時間割
  textSize(20);//フォントサイズ
  text(ns[0], 125, 187);//解析学の表示(1*1)
  textSize(11);//フォントサイズ
  text(ns[2], 122, 250);//数学総合演習の表示(1*2)

  //火曜日の後半の時間割
  textSize(12);//フォントサイズ
  text(ns[1], 195, 250);//線形代数学の表示(2*2)
  textSize(20);//フォントサイズ
  text(ns[3], 196, 318);//コミュの表示(2*3)
  textSize(11);
  text(ns[4], 192, 380);//情報機器概論の表示(2*4)

  //水曜日の後半の時間割
  textSize(11);//フォントサイズ
  text(ns[7], 262, 315);//情報表現入門の表示(3*3)
  text(ns[7], 262, 380);//情報表現入門の表示(3*4)
  text(ns[7], 262, 450);//情報表現入門の表示(3*5)

  //木曜日の後半の時間割
  textSize(20);//フォントサイズ
  text(ns[3], 335, 187);//コミュの表示(4*1)

  //金曜日の後半の時間割
  textSize(14);//フォントサイズ
  text(ns[5], 410, 175);//科学技術の表示(5*1)
  text(ns[6], 405, 192);//リテラシーの表示(5*1)

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

  //前半の半透明
  if (mouseX>20&&mouseX<110)
  {
    if (mouseY>520&&mouseY<610)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(20, 520, 90, 90, 10);//前半の上を白色の半透明
    }
  }

  //中間の半透明
  if (mouseX>135&&mouseX<225)
  {
    if (mouseY>520&&mouseY<610)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(135, 520, 90, 90, 10);//中間の上を白色の半透明
    }
  }

  //自分の半透明
  if (mouseX>250&&mouseX<340)
  {
    if (mouseY>520&&mouseY<610)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(250, 520, 90, 90, 10);//自分の上を白色の半透明
    }
  }

  //選択の半透明
  if (mouseX>365&&mouseX<455)
  {
    if (mouseY>520&&mouseY<610)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(365, 520, 90, 90, 10);//選択の上を白色の半透明
    }
  }

  //画面切り替え
  //ホーム画面への切り替え1
  if (mousePressed&&mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      screen=0;
    }
  }

  //前半の半透明
  if (mousePressed&&mouseX>20&&mouseX<110)
  {
    if (mouseY>520&&mouseY<610)
    {
      screen=9;
    }
  }

  //中間の半透明
  if (mousePressed&&mouseX>135&&mouseX<225)
  {
    if (mouseY>520&&mouseY<610)
    {
      screen=10;
    }
  }

  //自分の半透明
  if (mousePressed&&mouseX>250&&mouseX<340)
  {
    if (mouseY>520&&mouseY<610)
    {
      screen=4;
    }
  }

  //選択の半透明
  if (mousePressed&&mouseX>365&&mouseX<455)
  {
    if (mouseY>520&&mouseY<610)
    {
      screen=12;
    }
  }

  //ホーム画面への切り替え2
  if (key==BACKSPACE&&keyPressed==true) {
    screen=0;
  }
}
