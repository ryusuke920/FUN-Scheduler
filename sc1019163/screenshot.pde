void screenshot() {
  String path=System.getProperty("user.home")+"/Documents/screenshot/screenshot"+num+".jpg";

  //保存
  save(path);

  //番号を増やしていく
  num++;

  //ログ用途
  println("screen saved."+path);
}
