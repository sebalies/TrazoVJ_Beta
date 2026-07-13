
//------------------------------------------ // ABOUT WINDOW //  ---------------------------------------------------

void aboutWindOpen() {
  int Ancho = 350;
  int Alto = 400;
  int margen = 20;

  strokeWeight(0);
  fill(30);
  rect((W/2)-(Ancho/2), (H/2)-(Alto/2), Ancho, Alto);
  fill(15);
  rect((W/2)-(Ancho/2), ((H/2)-(Alto/2)), Ancho, 120);
  fill(20);
  rect((W/2)-(Ancho/2), ((H/2)+40), Ancho, 80);
  image(logo, (W/2)-(logoSize/2), (H/2)-(Alto/2)+(margen), logoSize, logoSize);

  textAlign(CENTER);
  textSize(11);
  fill(0, 255, 255);
  text("TRAZO VJ 2.0", round(W/2), round((H/2)-(Alto/2)+((margen*2)+logoSize)));
  fill(130, 160, 160);
  text("Syphon Version", round(W/2), round((H/2)-(Alto/2)+((margen*2)+logoSize))+20);
  fill(200);
  textAlign(LEFT);
  text("Developed in Processing by Sebastián Alíes, TrazoVJ uses", round(W/2)-((Ancho/2)-20), round((H/2)-(Alto/2)+((margen*2)+logoSize))+80);
  text("Syphon and Spout libraries to share real time drawings", round(W/2)-((Ancho/2)-20), round((H/2)-(Alto/2)+((margen*2)+logoSize))+100);
  text("with other video, ligth and mapping applications.", round(W/2)-((Ancho/2)-20), round((H/2)-(Alto/2)+((margen*2)+logoSize))+120);

  textAlign(LEFT);
  fill(0, 255, 255);
  text("trazosyphon.tumblr.com", (W/2)-(Ancho/2)+margen, (H/2)+60);
  fill(200);
  text("sebastianalies.com", (W/2)-(Ancho/2)+margen, (H/2)+80);
  
  fill(0, 255, 255);
  text("Other Libs used", (W/2)-(Ancho/2)+margen, (H/2)+140);
  fill(200);
  text("ControlP5 & OscP5 from www.sojamo.de", (W/2)-(Ancho/2)+margen, (H/2)+160);
  text("Minim from www.code.compartmental.net", (W/2)-(Ancho/2)+margen, (H/2)+180);

  textAlign(RIGHT);
  //fill(200);
  text("processing.org", (W/2)+(Ancho/2)-margen, round((H/2)+60));
  text("syphon.v002.info", (W/2)+(Ancho/2)-margen, (H/2)+80);
  text("spout.zeal.co/", (W/2)+(Ancho/2)-margen, (H/2)+100);
}