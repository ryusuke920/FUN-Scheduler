void timer() {
  fill(0);//黒色
  noStroke();//枠なし
  rect(0, 0, width, height);//全体の四角形

  //タイマーの表示
  fill(#43FFFD);//水色
  textSize(60);//フォントサイズ
  text("TIMER", 130, 120);//文字の出力

  //時間設定
  //時間を決めてくださいの表示
  fill(255);//白色
  textSize(35);//フォントサイズ
  text("時間を決めて下さい", 85, 250);//文字の出力
  textSize(28);//フォントサイズ
  fill(255, 255, 0);//黄色
  text("３０分勉強すると１コインゲット！！", 5, 200);//文字の出力
  //時間を増減する三角形の表示
  fill(255, 255, 0);
  triangle(30, 320, 50, 340, 50, 300);//１時間単位の左の大きい三角形
  triangle(90, 320, 100, 330, 100, 310);//５分単位の左の小さい三角形
  triangle(450, 320, 430, 340, 430, 300);//１時間単位の右の大きい三角形
  triangle(390, 320, 380, 330, 380, 310);//５分単位の右の小さい三角形

  //開始ボタンについて
  fill(255, 255, 0);//黄色
  rect(45, 445, 100, 100, 10);//開始の四角形
  rect(190, 445, 100, 100, 10);//停止の四角形
  rect(335, 445, 100, 100, 10);//リセットの四角形
  fill(0);//黒色
  textSize(40);//フォントサイズ
  text("開 始", 50, 510);//半角スペース１個
  text("停止", 200, 510);//半角スペース１個
  textSize(26);//フォントサイズ
  text("リセット", 332, 505);//半角スペース１個
  fill(255);//白色
  textSize(55);//フォントサイズ
  text(nf(countH, 2), 125, 340);//時間の表示
  text("：", 170, 335);//時間と分の間の：
  text(nf(countM, 2), 205, 340);//分の表示
  text("：", 250, 335);//分と秒数と間の：
  text(nf(countS, 2), 285, 340);//秒数の表示

  //三角形を押した際の設定
  //大きい四角形を押したら分が増える
  if (mousePressed==true) {
    if (mouseX>30&&mouseX<50) {
      if (mouseY>300&&mouseY<340) {
        countM+=1;
      }
    }
  }

  //小さい四角形を押したら秒数が増える
  if (mousePressed==true) {
    if (mouseX>90&&mouseX<100) {
      if (mouseY>310&&mouseY<330) {
        countS+=1;
      }
    }
  }


  //小さい四角形を押したら秒数が減る
  if (mousePressed==true) {
    if (mouseX>380&&mouseX<390) {
      if (mouseY>310&&mouseY<330) {
        countS-=1;
      }
    }
  }


  //大きい四角形を押したら分が減る
  if (mousePressed==true) {
    if (mouseX>430&&mouseX<450) {
      if (mouseY>300&&mouseY<340) {
        countM-=1;
      }
    }
  }

  //６０秒を超えたら０秒に戻る
  if (countS>=60) {
    countS=0;
    countM+=1;
  }

  //０秒以下になったら５９秒にする(コインのカウントも行う!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!)
  if (countS<0) {
    countS=59;
    countM-=1;
    coinCount+=1;
  }

  //６０分を超えたら０分に戻る
  if (countM>=60) {
    countM=0;
    countH+=1;
  }

  //０分以下になったら５９分にする
  if (countM<0) {
    countM=59;
    countH-=1;
  }

  //マイナスの時間に行かないようにする
  if (countH<0) {
    countH=0;
  }


  //ボタンを押した際の設定(limit...はボタン系のみに適用！！！)
  //開始ボタンを押したら時間が減っていく
  if (mousePressed==true) {
    if (mouseX>45&&mouseX<145) {
      if (mouseY>445&&mouseY<545) {
        countSS[0]=1;
      }
    }
  }

  //停止ボタンを押したら時間が止まる
  if (mousePressed==true) {
    if (mouseX>190&&mouseX<290) {
      if (mouseY>445&&mouseY<545) {
        countSS[0]=0;
      }
    }
  }

  //リセットボタンを押したら時間が止まる
  if (mousePressed==true) {
    if (mouseX>335&&mouseX<435) {
      if (mouseY>445&&mouseY<545) {
        countSS[0]=0;
        countS=0;
        countM=0;
        countH=0;
      }
    }
  }


  //１秒経過したら秒数を１減らす
  if (countSS[0]==1) {
    limitS+=1;
  }
  if (limitS>=60) {
    countS-=1;
    limitS=0;
  }


  //アラーム音を鳴らす
  if (countS<=0) {
    if (countM<=0) {
      if (countH<=0) {
        warning.play();
        warning.rewind();
      }
    }
  }


  //コインの入手プログラム
  if (coinCount>=30) {
    coin+=1;
    coinCount=0;
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
