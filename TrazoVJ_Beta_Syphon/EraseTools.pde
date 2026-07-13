//------------------------------------------ // BORRAR TODO // --------------------------------------------------------------------------------

public void borrar(int v) {   
  if (confirmClear == true) {
    cp5.get(Button.class, "BorrarSure")
      .setPosition((W/2)-40, (H/2)-10)
      .setBroadcast(true)
      ;
    cp5.get(Button.class, "BorrarNoSure")
      .setPosition((W/2)-40, (H/2)+10)
      .setBroadcast(true)
      ;
    print("clear");
  } else{
    BorrarSure();
  }
}

public void BorrarSure() {
  print("Sure");
  canvas.beginDraw();
  canvas.background(0);
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);

  cp5.get(Button.class, "BorrarSure")
    .setPosition(-100, (H/2)-10)
    .setBroadcast(false)
    ;
  cp5.get(Button.class, "BorrarNoSure")
    .setPosition(-100, (H/2)+10)
    .setBroadcast(true)
    ;
}

public void BorrarNoSure() { 
  cp5.get(Button.class, "BorrarSure")
    .setPosition(-100, (H/2)-10)
    .setBroadcast(false)
    ;
  cp5.get(Button.class, "BorrarNoSure")
    .setPosition(-100, (H/2)+10)
    .setBroadcast(true)
    ;  
  cp5.get(Button.class, "Borrar")
    .setValue(0)
    ;
}

public void Texto_Clear() {
  cp5.get(Textfield.class, "TEXTO IN").clear();
}

//---------------------------------------------------// ERASE TOOL // ------------------------------------------------------------------------------------------------------------------------------------------------

void eraseModo() {
  if (Erase_Mode == 1) {
    canvas.fill(0, 0, 0, 255);
    canvas.stroke(0, 0, 0, 100);
    canvas.strokeWeight(0);
    canvas.rect (mouseX-(Erase_Size/2), mouseY-(Erase_Size/2), Erase_Size, Erase_Size);
    if (Gost_Mode == 0) {
      fill(0);
      strokeWeight(1);  
      stroke(150, 255);
      rect (mouseX-(Erase_Size/2), mouseY-(Erase_Size/2), Erase_Size, Erase_Size);
    }
  } else {
    canvas.fill(0, 0, 0, 255);
    canvas.stroke(0, 0, 0, 100);
    canvas.strokeWeight(0);
    canvas.ellipse (mouseX, mouseY, Erase_Size, Erase_Size);
    if (Gost_Mode == 0) {
      fill(0);
      strokeWeight(1);  
      stroke(150, 255);
      ellipse (mouseX, mouseY, Erase_Size, Erase_Size);
    }
  }
}