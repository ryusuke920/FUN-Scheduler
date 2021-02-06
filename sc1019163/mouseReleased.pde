int e=0;//iの代わり
void mouseReleased() {
  if (screen==13) {
    if (G==0) {
      if (mouseX>=400&&mouseX<=470&&mouseY<=600&&mouseY>=530) {
        for (int i=0; i<5; i++) {//メモ帳のデータ
          d[i]=i+1+".";
        } 
        saveStrings("typewriter.txt", d);
      }

      if (mouseX>=400&&mouseX<=470&&mouseY<=550&&mouseY>=480) {
        e++;
        if (e>=5) {// メモデータ消去
          e=0;
        }
      }
    }

    if (G==1) {
      //文字決定
      if (mouseX>=90+100*H&&mouseX<=90+100*H+100&&mouseY>=370+65*F&&mouseY<=370+65*F+65) {
        mozi=M[5*Q+0];//中央
      }
      if (mouseX>=90+100*H-50&&mouseX<=90+100*H-50+40&&mouseY>=370+65*F+17.5&&mouseY<=370+65*F+17.5+40) {
        mozi=M[5*Q+1];
      }//左
      if (mouseX>=90+100*H+30&&mouseX<=90+100*H+30+40&&mouseY>=370+65*F+85&&mouseY<=370+65*F+85+40) {
        mozi=M[5*Q+4];//下
      } 
      if (mouseX>=90+100*H+30&&mouseX<=90+100*H+30+40&&mouseY>=370+65*F-50&&mouseY<=370+65*F-50+40) {
        mozi=M[5*Q+2];//上
      }

      if (mouseX>=90+100*H+110&&mouseX<=90+100*H+110+40&&mouseY>=370+65*F+17.5&&mouseY<=370+65*F+17.5+40) {
        mozi=M[5*Q+3];//右
      }

      G=0;//マウスを離したら、離した状態に
      H=-1;
      F=-1;

      d[e]+=mozi;//文字列の追加
      saveStrings("typewriter.txt", d);//セーブ
    }
  }
}
