void calendar(int year, int month) {
  //戻るボタン
  fill(255);//白色
  stroke(255, 0, 0);//赤色
  rect(5, 20, 60, 40, 10);//赤色の枠
  textSize(25);//フォントサイズ
  fill(0);//黒色
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
  //ホーム画面への切り替え２
  if (mousePressed&&mouseX>5&&mouseX<65) {
    if (mouseY>20&&mouseY<60) {
      screen=0;
    }
  }

  stroke(#FEFF03);//枠の色を初期化
  //カレンダーの機能について
  fill(#03E8FF);//水色
  textSize(35);//フォントサイズ
  text(year, 205, 70);//年の表示
  text(month, 227, 100);//月の表示
  textSize(15);//フォントサイズ

  int days = daysOfMonth(year, month);

  // draw days of the Month
  for (int day = 1; day <= days; day++) {
    fill(50);

    int x = dayOfWeek(year, month, day);
    int y = weekOfMonth(year, month, day);

    fill(0);
    noFill();
    rect(x*65+10, y*65+100, 65, 65);//四角の表示

    color z = setColor(x);
    fill(z);
    text(day, x*65+35, y*65+117);//日付の表示
  }
}

color setColor(int day) {  //色の設定
  if (day == 0) {
    return #FF0000;
  } else if (day == 6) {
    return #0008FF;
  } else {
    return #000000;
  }
}

int weekOfMonth(int year, int month, int date) {
  return (date - dayOfWeek(year, month, date) + 12) / 7;
}

int daysSum(int year, int month, int date) {
  // 2000,1,1
  int daysSum = 1;
  for (int y = year-1; y >= 2000; y--) {
    if (isLeapYear(y)) {
      daysSum += 366;
    } else {
      daysSum += 365;
    }
  }

  for (int m = month-1; m >= 1; m--) {
    daysSum += daysOfMonth(year, m);
  }

  daysSum += date;
  return daysSum;
}

int dayOfWeek(int year, int month, int date) {
  int daysSum = daysSum(year, month, date);
  // 0 - Sun / 6 - Sat
  return daysSum % 7;
}

boolean isLeapYear(int year) {
  if (year % 4 == 0 && year % 100 != 0) {
    return true;
  } else {
    return false;
  }
}

// 4,6,9,11 has 30 days.
int daysOfMonth(int year, int month) {
  if (month == 4 || month == 6 || month == 9 || month == 11) {
    return 30;
  } else if (month == 2) {
    if (isLeapYear(year)) {
      return 29;
    } else {
      return 28;
    }
  } else {
    return 31;
  }
}
