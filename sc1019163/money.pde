void money() {
  noStroke();//枠なし
  fill(0);//黒色
  rect(0, height*1/2, width, height*1/2);//下の背景

  //モンスターの背景グラデーション
  noStroke();//枠なし
  color c1=color(#FFFFFF);//白色
  color c2=color(#0343FF);//青色
  for (Color=0; Color<height*1/2; Color+=5) {
    color c12=lerpColor(c1, c2, Color/height);
    fill(c12);
    rect(0, 0, width, Color);
  }
  //購入番号の四角形について
  fill(0);//黒色
  stroke(255, 255, 0);//黄色の枠
  strokeWeight(3);//枠の太さ
  //３０個の黄色い四角の表示(6*5)
  for (int i=0; i<6; i++) {
    for (int j=0; j<5; j++) {
      rect(30+i*70, 335+j*60, 60, 50, 10);
    }
  }

  //戻るの選択画面
  fill(#6B9DD8);//青色
  stroke(255, 0, 0);//赤色
  rect(5, 20, 60, 40, 10);//赤色の枠
  textSize(25);//フォントサイズ
  fill(255);//白色
  text("戻る", 12, 50);


  //３０個の番号の表示
  fill(255);//白色
  textSize(35);//フォントサイズ
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 6; j++) {
      text(str(6 * i + j + 1), 43 + 70 * j, 375 + 60 * i);
    }
  }

  //モンスター以外の時の表示
  //マウスカーソルが半分より上にあるときに表示
  if (mouseY<height*1/2) {
    fill(#FCE50D);//黄色
    textSize(60);//フォントサイズ
    text("モンスター", 50, 160);//文字の出力
    text("ショップ", 180, 250);//文字の出力
  }

  //所持コインの表示
  textSize(35);//フォントサイズ
  fill(0);//黒色
  text("所持コイン数：", 70, 50);
  fill(255, 255, 0);//黄色
  text(coin, 325, 50);
  //モンスター一覧
  //小鳥について(１匹目)
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>335&&mouseY<385)
    {
      image(smallbird, 300, 50, 130, 240);//小鳥の画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ことり", 20, 150);//スペース５個
      text("必要コイン：１", 20, 210);
    }
  } 

  //リスについて(２匹目)
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>335&&mouseY<385)
    {
      image(risu, 280, 40, 180, 260);//リスの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：リス", 20, 150);//スペース５個
      text("必要コイン：２", 20, 210);
    }
  }  

  //ネコについて(３匹目)
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>335&&mouseY<385)
    {
      image(neko, 270, 30, 210, 260);//ネコの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ネコ", 20, 150);//スペース５個
      text("必要コイン：３", 20, 210);
    }
  }

  //牛について(４匹目)
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>335&&mouseY<385)
    {
      image(cow, 300, 50, 140, 220);//牛の画像
      fill(0);//黒色
      textSize(30);
      text("名称     ：ウシ", 20, 150);//スペース５個
      text("必要コイン：４", 20, 210);
    }
  }

  //カニについて(５匹目)
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>335&&mouseY<385)
    {
      image(kani, 270, -20, 200, 350);//カニの画像
      fill(0);//黒色
      textSize(30);
      text("名称     ：カニ", 20, 150);//スペース５個
      text("必要コイン：５", 20, 210);
    }
  }

  //カバについて(６匹目)
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>335&&mouseY<385)
    {
      image(kaba, 300, 40, 150, 240);//カバの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：カバ", 20, 150);//スペース５個
      text("必要コイン：６", 20, 210);
    }
  }

  //イヌについて(７匹目)
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>395&&mouseY<445)
    {
      image(inu, 290, 60, 150, 210);//イヌの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：イヌ", 20, 150);//スペース５個
      text("必要コイン：７", 20, 210);
    }
  }

  //カメについて(８匹目)
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>395&&mouseY<445)
    {
      image(turtle, 280, 40, 190, 280);//カメの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：カメ", 20, 150);//スペース５個
      text("必要コイン：８", 20, 210);
    }
  }

  //チョウチョについて(９匹目)
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>395&&mouseY<445)
    {
      image(tyou, 280, 40, 190, 280);//チョウチョの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称   ：チョウチョ", 20, 150);//スペース３個
      text("必要コイン：９", 20, 210);
    }
  }

  //タヌキについて(１０匹目)
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>395&&mouseY<445)
    {
      image(tanuki, 300, 50, 150, 230);//タヌキの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：タヌキ", 20, 150);//スペース５個
      text("必要コイン：１０", 20, 210);
    }
  }

  //キツネについて(１１匹目)
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>395&&mouseY<445)
    {
      image(kitune, 300, 50, 150, 230);//キツネの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：キツネ", 20, 150);//スペース５個
      text("必要コイン：１１", 20, 210);
    }
  }

  //ハチについて(１２匹目)
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>395&&mouseY<445)
    {
      image(hati, 250, 50, 230, 230);//ハチの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ハチ", 20, 150);//スペース５個
      text("必要コイン：１２", 20, 210);
    }
  }

  //パンダについて(１３匹目)
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>455&&mouseY<505)
    {
      image(panda, 265, 50, 210, 230);//パンダの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：パンダ", 20, 150);//スペース５個
      text("必要コイン：１３", 20, 210);
    }
  }

  //イルカについて(１４匹目)
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>455&&mouseY<505)
    {
      image(dolphin, 280, 70, 190, 200);//イルカの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：イルカ", 20, 150);//スペース５個
      text("必要コイン：１４", 20, 210);
    }
  }

  //カラスについて(１５匹目)
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>455&&mouseY<505)
    {
      image(karasu, 250, 70, 220, 190);//カラスの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：カラス", 20, 150);//スペース５個
      text("必要コイン：１５", 20, 210);
    }
  }

  //トラについて(１６匹目)
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>455&&mouseY<505)
    {
      image(tora, 260, 50, 220, 230);//トラの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：トラ", 20, 150);//スペース５個
      text("必要コイン：１６", 20, 210);
    }
  }

  //コアラについて(１７匹目)
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>455&&mouseY<505)
    {
      image(koara, 280, 70, 190, 200);//コアラの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：コアラ", 20, 150);//スペース５個
      text("必要コイン：１７", 20, 210);
    }
  }

  //ウサギについて(１８匹目)
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>455&&mouseY<505)
    {
      image(usagi, 250, 20, 240, 250);//ウサギの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ウサギ", 20, 150);//スペース５個
      text("必要コイン：１８", 20, 210);
    }
  }

  //ライオンについて(１９匹目)
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>515&&mouseY<565)
    {
      image(lion, 255, 50, 230, 230);//ライオンの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ライオン", 20, 150);//スペース５個
      text("必要コイン：１９", 20, 210);
    }
  }

  //ペンギンについて(２０匹目)
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>515&&mouseY<565)
    {
      image(pengin, 270, 50, 190, 250);//ペンギンの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ペンギン", 20, 150);//スペース５個
      text("必要コイン：２０", 20, 210);
    }
  }

  //クジラについて(２１匹目)
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>515&&mouseY<565)
    {
      image(kuzira, 245, 45, 230, 230);//クジラの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：クジラ", 20, 150);//スペース５個
      text("必要コイン：２１", 20, 210);
    }
  }

  //カメレオンについて(２２匹目)
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>515&&mouseY<565)
    {
      image(kamereon, 245, 45, 230, 230);//カメレオンの画像
      fill(0);//黒色
      textSize(25);//フォントサイズ
      text("名称   ：カメレオン", 20, 150);//スペース３個
      text("必要コイン：２２", 20, 210);
    }
  }

  //ワニについて(２３匹目)
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>515&&mouseY<565)
    {
      image(wani, 220, 30, 250, 270);//ワニの画像
      fill(0);//黒色
      textSize(25);//フォントサイズ
      text("名称     ：ワニ", 20, 150);//スペース５個
      text("必要コイン：２３", 20, 210);
    }
  }

  //クマについて(２４匹目)
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>515&&mouseY<565)
    {
      image(kuma, 225, 30, 245, 270);//クマの画像
      fill(0);//黒色
      textSize(25);//フォントサイズ
      text("名称     ：クマ", 20, 150);//スペース５個
      text("必要コイン：２４", 20, 210);
    }
  }

  //タカについて(２５匹目)
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>575&&mouseY<625)
    {
      image(taka, 260, 35, 220, 250);//タカの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：タカ", 20, 150);//スペース５個
      text("必要コイン：２５", 20, 210);
    }
  }

  //シャチについて(２６匹目)
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>575&&mouseY<625)
    {
      image(syati, 260, 5, 220, 300);//シャチの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：シャチ", 20, 150);//スペース５個
      text("必要コイン：２６", 20, 210);
    }
  }

  //サメについて(２７匹目)
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>575&&mouseY<625)
    {
      image(same, 250, 30, 230, 270);//サメの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：サメ", 20, 150);//スペース５個
      text("必要コイン：２７", 20, 210);
    }
  }

  //オバケについて(２８匹目)
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>575&&mouseY<625)
    {
      image(obake, 270, 30, 200, 260);//オバケの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：オバケ", 20, 150);//スペース５個
      text("必要コイン：２８", 20, 210);
    }
  }

  //ドラゴンについて(２９匹目)
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>575&&mouseY<625)
    {
      image(doragon, 280, 20, 210, 280);//ドラゴンの画像
      fill(0);//黒色
      textSize(30);//フォントサイズ
      text("名称     ：ドラゴン", 20, 150);//スペース５個
      text("必要コイン：２９", 20, 210);
    }
  }

  //ティラノサウルスについて(３０匹目)
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>575&&mouseY<625)
    {
      image(thiranosaurusu, 240, 10, 230, 300);//ティラノサウルスの画像
      fill(0);//黒色
      textSize(20);//フォントサイズ
      text("名称：ティラノサウルス", 20, 150);//スペースなし
      text("必要コイン：３０", 20, 210);
    }
  }



  //モンスター一覧の購入ボタン
  //小鳥について(１匹目)
  //小鳥の所を押した場合
  if (mousePressed==true) {
    if (mouseX>30&&mouseX<90)
    {
      if (mouseY>335&&mouseY<385)
      {
        moneyCount[0]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[0]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[0]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[0]=2;//ホーム画面にモンスターが現れるようにする
          coin-=1;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[0]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[0]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[0]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(30, 335, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 29, 367);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //リスについて(２匹目)
  //リスの所を押した場合
  if (mousePressed==true) {
    if (mouseX>100&&mouseX<160)
    {
      if (mouseY>335&&mouseY<385)
      {
        moneyCount[1]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[1]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[1]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[1]=2;//ホーム画面にモンスターが現れるようにする
          coin-=2;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[1]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[1]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[1]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(100, 335, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 99, 367);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ネコについて(３匹目)
  //ネコの所を押した場合
  if (mousePressed==true) {
    if (mouseX>170&&mouseX<230)
    {
      if (mouseY>335&&mouseY<385)
      {
        moneyCount[2]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[2]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[2]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[2]=2;//ホーム画面にモンスターが現れるようにする
          coin-=3;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[2]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[2]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[2]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(170, 335, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 169, 367);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //うしについて(４匹目)
  //うしの所を押した場合
  if (mousePressed==true) {
    if (mouseX>240&&mouseX<300)
    {
      if (mouseY>335&&mouseY<385)
      {
        moneyCount[3]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[3]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[3]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[3]=2;//ホーム画面にモンスターが現れるようにする
          coin-=4;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[3]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[3]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[3]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(240, 335, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 239, 367);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //カニについて(５匹目)
  //カニの所を押した場合
  if (mousePressed==true) {
    if (mouseX>310&&mouseX<370)
    {
      if (mouseY>335&&mouseY<385)
      {
        moneyCount[4]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[4]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[4]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[4]=2;//ホーム画面にモンスターが現れるようにする
          coin-=5;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[4]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[4]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[4]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(310, 335, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 310, 367);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //カバについて(６匹目)
  //カバの所を押した場合
  if (mousePressed==true) {
    if (mouseX>380&&mouseX<440)
    {
      if (mouseY>335&&mouseY<385)
      {
        moneyCount[5]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[5]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[5]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[5]=2;//ホーム画面にモンスターが現れるようにする
          coin-=6;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[5]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[5]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[5]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(380, 335, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 379, 367);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //イヌについて(７匹目)
  //イヌの所を押した場合
  if (mousePressed==true) {
    if (mouseX>30&&mouseX<90)
    {
      if (mouseY>395&&mouseY<445)
      {
        moneyCount[6]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[6]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[6]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[6]=2;//ホーム画面にモンスターが現れるようにする
          coin-=7;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[6]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[6]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[6]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(30, 395, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 29, 427);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  } 

  //カメについて(８匹目)
  //カメの所を押した場合
  if (mousePressed==true) {
    if (mouseX>100&&mouseX<160)
    {
      if (mouseY>395&&mouseY<445)
      {
        moneyCount[7]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[7]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[7]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[7]=2;//ホーム画面にモンスターが現れるようにする
          coin-=8;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[7]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[7]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[7]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(100, 395, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 99, 427);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //チョウチョについて(９匹目)
  //チョウチョの所を押した場合
  if (mousePressed==true) {
    if (mouseX>170&&mouseX<230)
    {
      if (mouseY>395&&mouseY<445)
      {
        moneyCount[8]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[8]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[8]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[8]=2;//ホーム画面にモンスターが現れるようにする
          coin-=9;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[8]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[8]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[8]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(170, 395, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 169, 427);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //タヌキについて(１０匹目)
  //タヌキの所を押した場合
  if (mousePressed==true) {
    if (mouseX>240&&mouseX<300)
    {
      if (mouseY>395&&mouseY<445)
      {
        moneyCount[9]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[9]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[9]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[9]=2;//ホーム画面にモンスターが現れるようにする
          coin-=10;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[9]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[9]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[9]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(240, 395, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 239, 427);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //キツネについて(11匹目)
  //キツネの所を押した場合
  if (mousePressed==true) {
    if (mouseX>310&&mouseX<370)
    {
      if (mouseY>395&&mouseY<445)
      {
        moneyCount[10]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[10]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[10]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[10]=2;//ホーム画面にモンスターが現れるようにする
          coin-=11;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[10]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[10]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[10]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(310, 395, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 309, 427);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ハチについて(12匹目)
  //ハチの所を押した場合
  if (mousePressed==true) {
    if (mouseX>380&&mouseX<440)
    {
      if (mouseY>395&&mouseY<445)
      {
        moneyCount[11]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[11]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[11]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[11]=2;//ホーム画面にモンスターが現れるようにする
          coin-=12;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[11]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[11]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[11]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(380, 395, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 379, 427);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //パンダについて(１３匹目)
  //パンダの所を押した場合
  if (mousePressed==true) {
    if (mouseX>30&&mouseX<90)
    {
      if (mouseY>455&&mouseY<505)
      {
        moneyCount[12]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[12]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[12]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[12]=2;//ホーム画面にモンスターが現れるようにする
          coin-=13;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[12]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[12]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[12]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(30, 455, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 29, 487);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //イルカについて(14匹目)
  //イルカの所を押した場合
  if (mousePressed==true) {
    if (mouseX>100&&mouseX<160)
    {
      if (mouseY>455&&mouseY<505)
      {
        moneyCount[13]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[13]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[13]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[13]=2;//ホーム画面にモンスターが現れるようにする
          coin-=14;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[13]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[13]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[13]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(100, 455, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 99, 487);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //カラスについて(15匹目)
  //カラスの所を押した場合
  if (mousePressed==true) {
    if (mouseX>170&&mouseX<230)
    {
      if (mouseY>455&&mouseY<505)
      {
        moneyCount[14]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[14]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[14]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[14]=2;//ホーム画面にモンスターが現れるようにする
          coin-=15;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[14]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[14]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[14]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(170, 455, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 169, 487);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //トラについて(１６匹目)
  //トラの所を押した場合
  if (mousePressed==true) {
    if (mouseX>240&&mouseX<300)
    {
      if (mouseY>455&&mouseY<505)
      {
        moneyCount[15]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[15]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[15]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[15]=2;//ホーム画面にモンスターが現れるようにする
          coin-=16;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[15]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[15]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[15]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(240, 455, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 239, 487);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //コアラについて(17匹目)
  //コアラの所を押した場合
  if (mousePressed==true) {
    if (mouseX>310&&mouseX<370)
    {
      if (mouseY>455&&mouseY<505)
      {
        moneyCount[16]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[16]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[16]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[16]=2;//ホーム画面にモンスターが現れるようにする
          coin-=17;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[16]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[16]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[16]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(310, 455, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 309, 487);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ウサギについて(18匹目)
  //ウサギの所を押した場合
  if (mousePressed==true) {
    if (mouseX>380&&mouseX<440)
    {
      if (mouseY>455&&mouseY<505)
      {
        moneyCount[17]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[17]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[17]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[17]=2;//ホーム画面にモンスターが現れるようにする
          coin-=18;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[17]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[17]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[17]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(380, 455, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 379, 487);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ライオンについて(１9匹目)
  //ライオンの所を押した場合
  if (mousePressed==true) {
    if (mouseX>30&&mouseX<90)
    {
      if (mouseY>515&&mouseY<565)
      {
        moneyCount[18]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[18]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[18]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[18]=2;//ホーム画面にモンスターが現れるようにする
          coin-=19;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[18]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[18]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[18]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(30, 515, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 29, 547);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ペンギンについて(20匹目)
  //ペンギンの所を押した場合
  if (mousePressed==true) {
    if (mouseX>100&&mouseX<160)
    {
      if (mouseY>515&&mouseY<565)
      {
        moneyCount[19]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[19]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[19]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[19]=2;//ホーム画面にモンスターが現れるようにする
          coin-=20;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[19]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[19]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[19]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(100, 515, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 99, 547);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //クジラについて(21匹目)
  //クジラの所を押した場合
  if (mousePressed==true) {
    if (mouseX>170&&mouseX<230)
    {
      if (mouseY>515&&mouseY<565)
      {
        moneyCount[20]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[20]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[20]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[20]=2;//ホーム画面にモンスターが現れるようにする
          coin-=21;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[20]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[20]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[20]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(170, 515, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 169, 547);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //カメレオンについて(22匹目)
  //カメレオンの所を押した場合
  if (mousePressed==true) {
    if (mouseX>240&&mouseX<300)
    {
      if (mouseY>515&&mouseY<565)
      {
        moneyCount[21]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[21]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[21]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[21]=2;//ホーム画面にモンスターが現れるようにする
          coin-=22;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[21]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[21]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[21]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(240, 515, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 239, 547);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ワニについて(23匹目)
  //ワニの所を押した場合
  if (mousePressed==true) {
    if (mouseX>310&&mouseX<370)
    {
      if (mouseY>515&&mouseY<565)
      {
        moneyCount[22]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[22]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[22]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[22]=2;//ホーム画面にモンスターが現れるようにする
          coin-=23;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[22]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[22]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[22]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(310, 515, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 309, 547);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //クマについて(24匹目)
  //クマの所を押した場合
  if (mousePressed==true) {
    if (mouseX>380&&mouseX<440)
    {
      if (mouseY>515&&mouseY<565)
      {
        moneyCount[23]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[23]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[23]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[23]=2;//ホーム画面にモンスターが現れるようにする
          coin-=24;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[23]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[23]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[23]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(380, 515, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 379, 547);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //タカについて(25匹目)
  //タカの所を押した場合
  if (mousePressed==true) {
    if (mouseX>30&&mouseX<90)
    {
      if (mouseY>575&&mouseY<625)
      {
        moneyCount[24]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[24]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[24]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[24]=2;//ホーム画面にモンスターが現れるようにする
          coin-=25;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[24]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[24]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[24]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(30, 575, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 29, 607);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //シャチについて(26匹目)
  //シャチの所を押した場合
  if (mousePressed==true) {
    if (mouseX>100&&mouseX<160)
    {
      if (mouseY>575&&mouseY<625)
      {
        moneyCount[25]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[25]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[25]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[25]=2;//ホーム画面にモンスターが現れるようにする
          coin-=26;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[25]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[25]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[25]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(100, 575, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 99, 607);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //サメについて(27匹目)
  //サメの所を押した場合
  if (mousePressed==true) {
    if (mouseX>170&&mouseX<230)
    {
      if (mouseY>575&&mouseY<625)
      {
        moneyCount[26]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[26]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[26]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[26]=2;//ホーム画面にモンスターが現れるようにする
          coin-=27;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[26]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[26]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[26]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(170, 575, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 169, 607);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //オバケについて(28匹目)
  //オバケの所を押した場合
  if (mousePressed==true) {
    if (mouseX>240&&mouseX<300)
    {
      if (mouseY>575&&mouseY<625)
      {
        moneyCount[27]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[27]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[27]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[27]=2;//ホーム画面にモンスターが現れるようにする
          coin-=28;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[27]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[27]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[27]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(240, 575, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 239, 607);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ドラゴンについて(29匹目)
  //ドラゴンの所を押した場合
  if (mousePressed==true) {
    if (mouseX>310&&mouseX<370)
    {
      if (mouseY>575&&mouseY<625)
      {
        moneyCount[28]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[28]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[28]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[28]=2;//ホーム画面にモンスターが現れるようにする
          coin-=29;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[28]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[28]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[28]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(310, 575, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 309, 607);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
  }

  //ティラノサウルスについて(30匹目)
  //ティラノサウルスの所を押した場合
  if (mousePressed==true) {
    if (mouseX>380&&mouseX<440)
    {
      if (mouseY>575&&mouseY<625)
      {
        moneyCount[29]=1;
      }
    }
  }

  //購入画面の表示
  if (moneyCount[29]==1) {
    fill(0, 150);//黒色
    stroke(255, 255, 0);//黄色の枠
    rect(40, 80, 400, 180, 10);
    fill(255);//白色
    textSize(30);//フォントサイズ
    text("購入しますか？", 130, 130);
    text("はい", 100, 200);
    text("いいえ", 280, 200);
    noFill();//色なし
    rect(80, 165, 100, 50, 10);//はいの四角形
    rect(273, 165, 100, 50, 10);//いいえの四角形
  }

  //はいを選んだ場合
  if (moneyCount[29]==1) {
    if (mousePressed==true) {
      if (mouseX>80&&mouseX<180) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(80, 165, 100, 50, 10);//はいの四角形
          money+=1;//ホーム画面の所持数をプラス１にする
          moneyCount[29]=2;//ホーム画面にモンスターが現れるようにする
          coin-=30;
          moneymoney.play();
          moneymoney.rewind();
        }
      }
    }
  }

  //いいえを選んだ場合
  if (moneyCount[29]==1) {
    if (mousePressed==true) {
      if (mouseX>273&&mouseX<373) {
        if (mouseY>165&&mouseY<215) {
          fill(255, 255, 255, 75);//白色の半透明
          rect(273, 165, 100, 50, 10);//いいえの四角形
          moneyCount[29]=0;
        }
      }
    }
  }

  //はいを押したら二度と同じものを購入できなくする
  if (moneyCount[29]==2) {
    fill(0);//黒色
    stroke(0);//黒色の枠
    rect(380, 575, 60, 50, 10);
    fill(255, 0, 0);//赤色
    textSize(22);//フォントサイズ
    text("購入済", 379, 607);//購入済の文字の出力(rect(x1,y1,x2,y2)とした時の(x1-1,y1+32))
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

  //３０個の番号の半透明
  //1の上を半透明
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>335&&mouseY<385)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(30, 335, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //2の上を半透明
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>335&&mouseY<385)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(100, 335, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //3の上を半透明
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>335&&mouseY<385)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(170, 335, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //4の上を半透明
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>335&&mouseY<385)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(240, 335, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //5の上を半透明
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>335&&mouseY<385)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(310, 335, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //6の上を半透明
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>335&&mouseY<385)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(380, 335, 60, 50, 10);//時計の上を白色の半透明
    }
  } 

  //7の上を半透明
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>395&&mouseY<445)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(30, 395, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //8の上を半透明
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>395&&mouseY<445)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(100, 395, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //9の上を半透明
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>395&&mouseY<445)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(170, 395, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //10の上を半透明
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>395&&mouseY<445)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(240, 395, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //11の上を半透明
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>395&&mouseY<445)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(310, 395, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //12の上を半透明
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>395&&mouseY<445)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(380, 395, 60, 50, 10);//時計の上を白色の半透明
    }
  } 

  //13の上を半透明
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>455&&mouseY<505)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(30, 455, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //14の上を半透明
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>455&&mouseY<505)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(100, 455, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //15の上を半透明
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>455&&mouseY<505)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(170, 455, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //16の上を半透明
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>455&&mouseY<505)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(240, 455, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //17の上を半透明
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>455&&mouseY<505)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(310, 455, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //18の上を半透明
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>455&&mouseY<505)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(380, 455, 60, 50, 10);//時計の上を白色の半透明
    }
  } 

  //19の上を半透明
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>515&&mouseY<565)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(30, 515, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //20の上を半透明
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>515&&mouseY<565)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(100, 515, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //21の上を半透明
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>515&&mouseY<565)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(170, 515, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //22の上を半透明
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>515&&mouseY<565)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(240, 515, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //23の上を半透明
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>515&&mouseY<565)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(310, 515, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //24の上を半透明
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>515&&mouseY<565)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(380, 515, 60, 50, 10);//時計の上を白色の半透明
    }
  } 

  //25の上を半透明
  if (mouseX>30&&mouseX<90)
  {
    if (mouseY>575&&mouseY<625)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(30, 575, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //26の上を半透明
  if (mouseX>100&&mouseX<160)
  {
    if (mouseY>575&&mouseY<625)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(100, 575, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //27の上を半透明
  if (mouseX>170&&mouseX<230)
  {
    if (mouseY>575&&mouseY<625)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(170, 575, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //28の上を半透明
  if (mouseX>240&&mouseX<300)
  {
    if (mouseY>575&&mouseY<625)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(240, 575, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //29の上を半透明
  if (mouseX>310&&mouseX<370)
  {
    if (mouseY>575&&mouseY<625)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(310, 575, 60, 50, 10);//時計の上を白色の半透明
    }
  }  

  //30の上を半透明
  if (mouseX>380&&mouseX<440)
  {
    if (mouseY>575&&mouseY<625)
    {
      stroke(255, 255, 0);//黄色の枠
      strokeWeight(1);//枠の太さ
      fill(255, 255, 255, 75);//白色の半透明
      rect(380, 575, 60, 50, 10);//時計の上を白色の半透明
    }
  } 

  //画面切り替え
  //戻るのホーム画面への切り替え
  if (mousePressed&&mouseX>5&&mouseX<65)
  {
    if (mouseY>20&&mouseY<60)
    {
      screen=0;
    }
  }

  if (key==BACKSPACE&&keyPressed==true) {
    screen=0;
  }
}
