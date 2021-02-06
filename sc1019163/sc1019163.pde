//2019/6/25～
//calendar
int defaultYear = 2019;//最初の年
int defaultMonth = 7;//最初の月
int rectRX, rectRY;//カレンダーの四角形のX座標と横の長さ
int rectLX, rectLY;//カレンダーの四角形のY座標と縦の長さ
int rectSize = 20;//四角形の大きさ
boolean leftButtonOver = false;
boolean rightButtonOver = false;
color currentColor = 200;//カレンダーの色（グレースケール）
//clock
int s;//時計の秒針
int m;//時計の分針
int h;//時計の時針
//home
String dataz[];//時間割のデータ
int block_w=0;//ブロックの横幅
int block_w1=0;//ブロックの上の横線
int block_w2=0;//ブロックの下の横線
int block_h1=0;//ブロックの上の縦線
int block_h2=0;//ブロックの真ん中の左の縦線
int block_h3=0;//ブロックの真ん中の右の縦線
int block_h4=0;//ブロックの下の縦線
//ideal
String datax[];
String datay[];
int qh[];
//モンスターの動き
int x1=0;
float dx1=3.0;
int y1=0;
float dy1=3.0;
int x2=0;
float dx2=6.0;
int x3=0;
float dx3=5.0;
int x4=0;
float dx4=2.0;
int x5=0;
float dx5=3.0;
int x6=0;
float dx6=2.5;
int x7=0;
float dx7=4.0;
int x8=0;
float dx8=3.0;
int y8=0;
float dy8=3.0;
int x9=0;
float dx9=4.0;
int y9=0;
float dy9=5.0;
int x10=0;
float dx10=3.0;
int x11=0;
float dx11=3.0;
int x12=0;
float dx12=6.0;
int y12=0;
float dy12=6.0;
int x13=0;
float dx13=4.5;
int x14=0;
float dx14=5.5;
int x15=0;
float dx15=6.0;
int x16=0;
float dx16=5.0;
int x17=0;
float dx17=3.0;
int x18=0;
float dx18=6.0;
int x19=0;
float dx19=4.0;
int x20=0;
float dx20=5.5;
int x21=0;
float dx21=2.5;
int x22=0;
float dx22=3.0;
int x23=0;
float dx23=3.0;
int x24=0;
float dx24=3.0;
int x25=0;
float dx25=7.5;
int x26=0;
float dx26=6.0;
int x27=0;
float dx27=6.0;
int x28=0;
float dx28=10.0;
int x29=0;
float dx29=6.0;
int x30=0;
float dx30=25.5;
//memo
int n=0;
String data;
String d[]=new String[5];
//memo writer
int G=0;//キーボードを押しているか判定
int H=-1, F=-1;//押したキーボードの番号
int k, f;//キーボードの２重for文のためのもの
String mozi;//書き込み用のもじ
int p=0;//カナ文字の番号を表す
int Q=0;//キーボードにそれぞれのもじ格納

String[] M={"あ", "い", "う", "え", "お", 
  "た", "ち", "つ", "て", "と", 
  "ま", "み", "む", "め", "も", 
  "゛", "゜", "％", "＠", "＆", 
  "か", "き", "く", "け", "こ", 
  "な", "に", "ぬ", "ね", "の", 
  "や", "い", "ゆ", "え", "よ", 
  "わ", "を", "ん", "ー", "～", 
  "さ", "し", "す", "せ", "そ", 
  "は", "ひ", "ふ", "へ", "ほ", 
  "ら", "り", "る", "れ", "ろ", 
  "、", "。", "？", "！", "…"};//キーボード用文字配列
//money
int money=0;
//↓普通用
int moneyCount[]={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
//↓デモ用（こっちに切り替えて遊んでください！）
//int moneyCount[]={2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 2, 0, 2, 2, 2, 2, 2, 2, 0, 0};//(デモ用)
//screenshot
int num=0;//スクショの写真の番号
//study
float counta=0.0;//１つ目の四角形の始点のX座標
float countb=0.0;//１つ目の四角形の横の長さ
float countc=0.0;//２つ目の四角形の始点のX座標
float countd=0.0;//２つ目の四角形の横の長さ
float counte=0.0;//３つ目の四角形の始点のX座標
float countf=0.0;//３つ目の四角形の横の長さ
float countg=0.0;//４つ目の四角形の始点のX座標
float counth=0.0;//４つ目の四角形の横の長さ
float counti=0.0;//５つ目の四角形の始点のX座標
float countj=0.0;//５つ目の四角形の横の長さ
float countk=0.0;//６つ目の四角形の始点のX座標
float countl=0.0;//６つ目の四角形の横の長さ
float countm=0.0;//７つ目の四角形の始点のX座標
float countn=0.0;//７つ目の四角形の横の長さ
float counto=0.0;//８つ目の四角形の始点のX座標
float countp=0.0;//８つ目の四角形の横の長さ
float countq=0.0;//９つ目の四角形の始点のX座標
float countr=0.0;//９つ目の四角形の横の長さ
float counts=0.0;//１０つ目の四角形の始点のX座標
float countt=0.0;//１０つ目の四角形の横の長さ
int count[]={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};//四角形を作れるかの判断のための配列
int am[]={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};//午前に四角形を作るために判断する配列
int pm[]={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};//午後に四角形を作るために判断する配列
//timer
int limitS=0;
int countS=0;
int countM=30;
int countH=0;
int countSS[]={0};
//int coin=0;
int coin=1000;//(デモ用)
int coinCount=0;
//timetable １・２・３・４・５
String ns[]={"解析学", "線形代数学", "数学総合演習", "コミュ", "情報機器概論", "科学技術", "リテラシー", "情報表現入門", "VEP"};//need subject(必修科目)
String cs[]={"余暇と健康", "ロボットの", "科学技術", "認知科学", "物理学入門", "コンピュータ", "と教育", "情報メディア", "社会論", "メディア", "の科学", "芸術論", "人体生理学", "高度ICT演習"};//choice subject(選択科目)
//その他
float Color;//グラデーションの設定
int screen=0;//画面切り替えの変数
//画像設定
PImage smallbird;
PImage risu;
PImage neko;
PImage cow;
PImage kani;
PImage kaba;
PImage inu;
PImage turtle;
PImage tyou;
PImage tanuki;
PImage kitune;
PImage hati;
PImage panda;
PImage dolphin;
PImage karasu;
PImage tora;
PImage koara;
PImage usagi;
PImage lion;
PImage pengin;
PImage kuzira;
PImage kamereon;
PImage wani;
PImage kuma;
PImage taka;
PImage syati;
PImage same;
PImage obake;
PImage doragon;
PImage thiranosaurusu;
PImage graph;
PImage memo;
PImage karennda;
PImage zikanwari;
PImage timer;
PImage ikusei;
PImage nihon;
PImage block;
PImage camera;
PImage gomi;
PImage back;
//音楽設定
import ddf.minim.*;
Minim minim;
AudioPlayer home;//ホーム画面のBGM
AudioPlayer moneymoney;//購入時のBGM
AudioPlayer warning;//アラーム音のBGM
//天気予報について
String baseURL = "http://weather.livedoor.com/forecast/webservice/json/v1?city=";//参考にする天気予報
String hakodate = "017010";//函館の天気番号
String hatinohe="020030";//八戸の天気番号
String sendai="040010";//仙台の天気番号
String tokyo="130010";//東京の天気番号
String nagoya="230010";//名古屋の天気番号
String kyoto="260010";//京都の天気番号
String oosaka="270000";//大阪の天気番号
String hirosima="340010";//広島の天気番号
String fukuoka="400010";//福岡の天気番号
String naha="471010";//那覇の天気番号
String tenki1;//函館の天気名
String tenki2;//八戸の天気名
String tenki3;//仙台の天気名
String tenki4;//東京の天気名
String tenki5;//名古屋の天気名
String tenki6;//京都の天気名
String tenki7;//大阪の天気名
String tenki8;//広島の天気名
String tenki9;//福岡の天気名
String tenki10;//那覇の天気名
JSONArray forecasts1;//函館の天気の読み込み？
JSONArray forecasts2;//八戸の天気の読み込み？
JSONArray forecasts3;//仙台の天気の読み込み？
JSONArray forecasts4;//東京の天気の読み込み？
JSONArray forecasts5;//名古屋の天気の読み込み？
JSONArray forecasts6;//京都の天気の読み込み？
JSONArray forecasts7;//大阪の天気の読み込み？
JSONArray forecasts8;//広島の天気の読み込み？
JSONArray forecasts9;//福岡の天気の読み込み？
JSONArray forecasts10;//那覇の天気の読み込み？
void setup() {
  size(480, 640);//画面サイズ
  //データの読み込み
  d=loadStrings("typewriter.txt");
  datax=loadStrings("week1_1019163.txt");//１週目のデータ
  datay=loadStrings("week2_1019163.txt");//２週目のデータ
  //フォント設定
  PFont font=createFont("MS Mintyou", 40);
  textFont(font);//フォント設定
  noStroke();//枠なし
  //カレンダー
  rectLX =150;//月を戻す四角のX座標
  rectLY = 70;//月を戻す四角の長さ
  rectRX = 310;//月を進める四角のY座標
  rectRY = 70;//月を進める四角の長さ
  //メモ帳
  
  //画像ダウンロード
  smallbird=loadImage("smallbird.png");
  risu=loadImage("risu.png");
  neko=loadImage("neko.png");
  cow=loadImage("cow.png");
  kani=loadImage("kani.png");
  kaba=loadImage("kaba.png");
  inu=loadImage("inu.png");
  turtle=loadImage("turtle.png");
  tyou=loadImage("tyou.png");
  tanuki=loadImage("tanuki.png");
  kitune=loadImage("kitune.png");
  hati=loadImage("hati.png");
  panda=loadImage("panda.png");
  dolphin=loadImage("dolphin.png");
  karasu=loadImage("karasu.png");
  tora=loadImage("tora.png");
  koara=loadImage("koara.png");
  usagi=loadImage("usagi.png");
  lion=loadImage("lion.png");
  pengin=loadImage("pengin.png");
  kuzira=loadImage("kuzira.png");
  kamereon=loadImage("kamereon.png");
  wani=loadImage("wani.png");
  kuma=loadImage("kuma.png");
  taka=loadImage("taka.png");
  syati=loadImage("syati.png");
  same=loadImage("same.png");
  obake=loadImage("obake.png");
  doragon=loadImage("doragon.png");
  thiranosaurusu=loadImage("thiranosaurusu.png");
  graph=loadImage("graph.png");
  memo=loadImage("memo.png");
  karennda=loadImage("karennda.png");
  zikanwari=loadImage("zikanwari.png");
  timer=loadImage("timer.png");
  ikusei=loadImage("ikusei.png");
  nihon=loadImage("nihon.png");
  block=loadImage("block.png");
  camera=loadImage("camera.png");
  gomi=loadImage("gomi.png");
  back=loadImage("back.png");
  //音声ダウンロード
  minim=new Minim(this);
  home=minim.loadFile("home.mp3");
  moneymoney=minim.loadFile("moneymoney.mp3");
  warning=minim.loadFile("warning.mp3");
  //気温設定
  JSONObject w1 = loadJSONObject(baseURL + hakodate);//函館の天気予報の読み込み
  JSONObject w2 = loadJSONObject(baseURL + hatinohe);//八戸の天気予報の読み込み
  JSONObject w3 = loadJSONObject(baseURL + sendai);//仙台の天気予報の読み込み
  JSONObject w4 = loadJSONObject(baseURL + tokyo);//東京の天気予報の読み込み
  JSONObject w5 = loadJSONObject(baseURL + nagoya);//名古屋の天気予報の読み込み
  JSONObject w6 = loadJSONObject(baseURL + kyoto);//京都の天気予報の読み込み
  JSONObject w7 = loadJSONObject(baseURL + oosaka);//大阪の天気予報の読み込み
  JSONObject w8 = loadJSONObject(baseURL + hirosima);//広島の天気予報の読み込み
  JSONObject w9 = loadJSONObject(baseURL + fukuoka);//福岡の天気予報の読み込み
  JSONObject w10 = loadJSONObject(baseURL + naha);//那覇の天気予報の読み込み
  tenki1 = w1.getString("title");
  forecasts1 = w1.getJSONArray("forecasts");
  tenki2 = w2.getString("title");
  forecasts2= w2.getJSONArray("forecasts");
  tenki3 = w3.getString("title");
  forecasts3= w3.getJSONArray("forecasts");
  tenki4 = w4.getString("title");
  forecasts4= w4.getJSONArray("forecasts");
  tenki5 = w5.getString("title");
  forecasts5= w5.getJSONArray("forecasts");
  tenki6 = w6.getString("title");
  forecasts6= w6.getJSONArray("forecasts");
  tenki7 = w7.getString("title");
  forecasts7= w7.getJSONArray("forecasts");
  tenki8 = w8.getString("title");
  forecasts8= w8.getJSONArray("forecasts");
  tenki9 = w9.getString("title");
  forecasts9= w9.getJSONArray("forecasts");
  tenki10 = w10.getString("title");
  forecasts10= w10.getJSONArray("forecasts");
}
void draw() {
  switch(screen) {
  case 0:
    home();
    break;
  case 1:
    study();
    break;
  case 2:
    ideal();
    break;    
  case 3:
    background(255);
    update();
    calendar(defaultYear, defaultMonth);
    if (rightButtonOver) {
      fill(255);
    } else {
      fill(0);
    }
    fill(#16FF03, 100);//若草色の半透明
    rect(rectRX, rectRY, rectSize, rectSize, 1000);
    if (leftButtonOver) {
      fill(255);
    } else {
      fill(0);
    }
    fill(#16FF03, 100);//若草色の半透明
    rect(rectLX, rectLY, rectSize, rectSize, 1000);
    break;
  case 4:
    timetable();
    break;
  case 5:
    timer();
    break;
  case 6:
    money();
    break;
  case 7:
    temperature();
    break;
  case 8:
    clock();
    break;
  case 9:
    timetable2();
    break;
  case 10:
    timetable3();
    break;
  case 11:
    timetable4();
    break;
  case 12:
    timetable5();
    break;
  case 13:
    memo();
    break;
  }

  //主にメモ帳の文字出力のところ

  if (screen==13) {
    for (h=0; h<3; h++) {//--------キーボード描写
      for (f=0; f<4; f++) {
        noStroke();
        fill(#F52F2F);//赤色
        rect(400, 560, 70, 70);//ゴミ箱アイコン枠
        image(gomi, 410, 570, 50, 50);//ゴミ箱アイコン本体
        fill(#0F79FF, 160);//青色
        rect(400, 480, 70, 70);//改行キーアイコン枠
        image(back, 410, 490, 50, 50);//改行キーアイコン本体
        stroke(0);
        fill(255);
        rect(90+100*h, 370+65*f, 100, 75);//マウスプレス前キーボードの枠
        fill(0);
        textSize(35);
        text(M[p], 90+100*h+30, 370+65*f+55);//マウスプレス前キーボードの文字

        p=p+5;//頭もじに限定

        if (G==1) {
          fill(255);
          rect(90+100*H-50, 370+65*F+17.5, 40, 40);//左
          rect(90+100*H+30, 370+65*F-50, 40, 40);//上
          rect(90+100*H+110, 370+65*F+17.5, 40, 40);//右　それぞれの文字枠
          rect(90+100*H+30, 370+65*F+85, 40, 40);//下

          textSize(20);
          fill(0);
          text(M[5*Q+1], 90+100*H-50+12, 370+65*F+17.5+28);//左
          text(M[5*Q+2], 90+100*H+30+12, 370+65*F-50+28);//上
          text(M[5*Q+3], 90+100*H+110+12, 370+65*F+17.5+28);//右　それぞれの文字本体
          text(M[5*Q+4], 90+100*H+30+12, 370+65*F+85+28);//下
        }
        if ((H==h&&F==f)||(H==-1&&F==-1)) {//キーボードの判定
          if (mousePressed) { 
            if (mouseX>=90+100*h&&mouseX<=90+100*h+100&&mouseY>=370+65*f&&mouseY<=370+65*f+65) {
              G=1;//１で周囲のキーボード表示
              H=h;//マウスを押したとき、どのマスか記憶
              F=f;
              for (int i=0; i<3; i++) {//押したマスをもとに、周囲の文字決定
                for (int j=0; j<4; j++) {
                  if (H==i&&F==j) {
                    Q=i*4+j;
                  }
                }
              }
            }
          }
        }
      }
    }
    p=0;
  }

/*  if (screen!=0) {
    home.play();
    home.rewind();
  }*/
  
}

//主にカレンダー
void mousePressed() {
  if (leftButtonOver) {
    background(currentColor);

    if (defaultMonth == 1) {
      defaultMonth = 12;
      defaultYear -= 1;
    } else {
      defaultMonth -= 1;
    }
  }
  if (rightButtonOver) {
    background(currentColor);

    if (defaultMonth == 12) {
      defaultMonth = 1;
      defaultYear += 1;
    } else {
      defaultMonth += 1;
    }
  }
}

boolean overRightButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overLeftButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void update() {
  if (overLeftButton(rectLX, rectLY, rectSize, rectSize)) {
    leftButtonOver = true;
    rightButtonOver = false;
  } else if (overRightButton(rectRX, rectRY, rectSize, rectSize)) {
    leftButtonOver = false;
    rightButtonOver = true;
  } else {
    leftButtonOver = false;
    rightButtonOver = false;
  }
}

void stop() {
  minim.stop();
  super.stop();
}
