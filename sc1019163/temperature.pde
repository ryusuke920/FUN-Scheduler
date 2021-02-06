void temperature() {
  //date  予報日
  //dateLabel  予報日(今日、明日、明後日のいずれか)
  //telop  天気（晴れ、曇り、雨など）
  //temperature  max・・最高気温/min・・最低気温
  //プロパティ名  内容//
  //celsius  摂氏
  //fahrenheit  華氏
  //url　天気などの画像
  //背景の色
  background(#1C83FC);//青色 

  //日本列島の表示
  image(nihon, 10, 15, 460, 620);//日本の画像
  fill(#FCFC36);//黄色
  textSize(40);//フォントサイズ
  text("全国のお天気", 70, 70);//文字の出力

  //都市名の表示
  fill(0);//黒色
  textSize(20);//フォントサイズ
  text("函館", 300, 200);//函館の表示
  text("八戸", 300, 240);//八戸の表示
  text("宮城", 290, 325);//宮城県の表示
  text("東京", 260, 435);//東京の表示
  text("名古屋", 205, 475);//名古屋の表示
  text("京都", 170, 450);//京都の表示
  text("大阪", 155, 485);//大阪の表示
  text("広島", 93, 475);//広島の表示
  text("福岡", 40, 510);//福岡の表示
  text("那覇", 320, 570);//那覇の表示

  //都市名の囲い(textのX-3,textのY-20,45,25,10)
  noFill();//枠のみ表示
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(2);//枠の太さ
  rect(297, 180, 45, 25, 10);//函館の枠
  rect(297, 220, 45, 25, 10);//八戸の枠
  rect(287, 305, 45, 25, 10);//宮城の枠
  rect(257, 415, 45, 25, 10);//東京の枠
  rect(205, 455, 65, 25, 10);//名古屋の枠
  rect(167, 430, 45, 25, 10);//京都の枠
  rect(152, 465, 45, 25, 10);//大阪の枠
  rect(90, 455, 45, 25, 10);//広島の枠
  rect(37, 490, 45, 25, 10);//福岡の枠
  rect(317, 550, 45, 25, 10);//那覇の枠

  //戻るボタン
  fill(#1C83FC);//黒色
  stroke(255, 0, 0);//赤色
  rect(5, 20, 60, 40, 10);//赤色の枠
  textSize(25);//フォントサイズ
  fill(255);//白色
  text("戻る", 12, 50);

  if (! (mouseX>297&&mouseX<342&&mouseY>180&&mouseY<205)) {
    if (! (mouseX>297&&mouseX<342&&mouseY>220&&mouseY<245)) {
      if (! (mouseX>287&&mouseX<332&&mouseY>305&&mouseY<330)) {
        if (! (mouseX>257&&mouseX<302&&mouseY>415&&mouseY<440)) {
          if (! (mouseX>205&&mouseX<270&&mouseY>455&&mouseY<480)) {
            if (! (mouseX>167&&mouseX<212&&mouseY>430&&mouseY<455)) {
              if (! (mouseX>152&&mouseX<197&&mouseY>465&&mouseY<490)) {
                if (! (mouseX>90&&mouseX<135&&mouseY>455&&mouseY<480)) {
                  if (! (mouseX>37&&mouseX<82&&mouseY>490&&mouseY<515)) {
                    if (! (mouseX>317&&mouseX<362&&mouseY>550&&mouseY<575)) {
                      fill(0);//黒色
                      textSize(27);//フォントサイズ
                      text("都市名の　　　に", 20, 150);//全角スペース３個
                      text("カーソルを", 20, 200);
                      text("合わせてください", 20, 250);
                      noFill();//枠のみ表示
                      strokeWeight(3);//枠の太さ
                      stroke(255, 255, 0);//黄色の枠
                      rect(135, 122, 67.5, 37.5, 10);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
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

  //マウスが乗ると色がつく・天気・気温表示
  //函館の半透明
  if (mouseX>297&&mouseX<342)
  {
    if (mouseY>180&&mouseY<205)
    {
      stroke(255, 255, 0);//黄色の枠
      fill(255, 255, 255, 75);//白色の半透明
      rect(297, 180, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki1, 20, 120);//函館の表示

      //函館の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts1.size(); i++) {//函館のデータを読み込み
        JSONObject f = forecasts1.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");//日付と天気
        JSONObject t = f.getJSONObject("temperature");//温度
        if (!t.isNull("min")) {//最低気温
          String d = t.getJSONObject("min").getString("celsius");//最低気温
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {//最高気温
          String d = t.getJSONObject("max").getString("celsius");//最高気温
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //八戸の半透明
  if (mouseX>297&&mouseX<342)
  {
    if (mouseY>220&&mouseY<245)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(297, 220, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki2, 20, 120);//八戸の表示

      //八戸の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts2.size(); i++) {
        JSONObject f = forecasts2.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //宮城の半透明
  if (mouseX>287&&mouseX<332)
  {
    if (mouseY>305&&mouseY<330)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(287, 305, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki3, 20, 120);//宮城の表示

      //宮城の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts3.size(); i++) {
        JSONObject f = forecasts3.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //東京の半透明
  if (mouseX>257&&mouseX<302)
  {
    if (mouseY>415&&mouseY<440)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(257, 415, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki4, 20, 120);//東京の表示

      //東京の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts4.size(); i++) {
        JSONObject f = forecasts4.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //名古屋の半透明
  if (mouseX>205&&mouseX<270)
  {
    if (mouseY>455&&mouseY<480)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(205, 455, 65, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki5, 20, 120);//名古屋の表示

      //名古屋の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts5.size(); i++) {
        JSONObject f = forecasts5.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //京都の半透明
  if (mouseX>167&&mouseX<212)
  {
    if (mouseY>430&&mouseY<455)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(167, 430, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki6, 20, 120);//京都の表示

      //京都の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts6.size(); i++) {
        JSONObject f = forecasts6.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //大阪の半透明
  if (mouseX>152&&mouseX<197)
  {
    if (mouseY>465&&mouseY<490)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(152, 465, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki7, 20, 120);//大阪の表示

      //大阪の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts7.size(); i++) {
        JSONObject f = forecasts7.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //広島の半透明
  if (mouseX>90&&mouseX<135)
  {
    if (mouseY>455&&mouseY<480)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(90, 455, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki8, 20, 120);//広島の表示

      //広島の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts8.size(); i++) {
        JSONObject f = forecasts8.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //福岡の半透明
  if (mouseX>37&&mouseX<82)
  {
    if (mouseY>490&&mouseY<515)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(37, 490, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki9, 20, 120);//福岡の表示

      //福岡の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts9.size(); i++) {
        JSONObject f = forecasts9.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
    }
  }

  //那覇の半透明
  if (mouseX>317&&mouseX<362)
  {
    if (mouseY>550&&mouseY<575)
    {
      stroke(255, 255, 0);
      fill(255, 255, 255, 75);//白色の半透明
      rect(317, 550, 45, 25, 10);//戻るの上を白色の半透明
      textSize(30);//フォントサイズ
      fill(0);//黒色
      text(tenki10, 20, 120);//那覇の表示

      //那覇の天気・気温などを表す
      fill(0);//黒色
      for (int i = 0; i < forecasts10.size(); i++) {
        JSONObject f = forecasts10.getJSONObject(i);
        String s = f.getString("dateLabel") + ":" + f.getString("telop");
        JSONObject t = f.getJSONObject("temperature");
        if (!t.isNull("min")) {
          String d = t.getJSONObject("min").getString("celsius");
          s = s + ", 最低:" + d;
        }
        if (!t.isNull("max")) {
          String d = t.getJSONObject("max").getString("celsius");
          s = s + ", 最高:" + d;
        }
        textSize(20);//フォントサイズ
        text(s, 5, 180 + 60 * i);
      }
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
