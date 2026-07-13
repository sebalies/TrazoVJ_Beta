boolean viewInfo = true;
int logoSize = 40;

// MARCA // ------------------------------------------------------------------------------------------------------------------------------------------------

void marcaXY() {

  int dataX = 80;
  int dataY = H-35;
  int dataXSub = 110;

  if (gridON == false) {
    image(logo, 20, H-60, logoSize, logoSize);

    if (viewInfo) {
      if ( W > 520) {
        textAlign(LEFT);
        textSize(9);
        fill(0);
        text("AREA "+str(W)+" / "+str(H)+" P", dataX+1, dataY+1);
        fill(210);
        text("AREA "+str(W)+" / "+str(H)+" P", dataX, dataY);

        fill(0);
        text("POS X "+mouseX+" / Y "+mouseY, dataX+dataXSub+1, dataY+1);
        fill(120);
        text("POS X "+mouseX+" / Y "+mouseY, dataX+dataXSub, dataY);

        fill(0);
        text("FILL R"+cp5.get(ColorWheel.class, "fillWheel").r()+"/G"+cp5.get(ColorWheel.class, "fillWheel").g()+"/B"+cp5.get(ColorWheel.class, "fillWheel").b(), dataX+(dataXSub*2)+1, dataY+1);
        fill(cp5.get(ColorWheel.class, "fillWheel").r(), cp5.get(ColorWheel.class, "fillWheel").g(), cp5.get(ColorWheel.class, "fillWheel").b(), Fill_Alpha);
        text("FILL R"+cp5.get(ColorWheel.class, "fillWheel").r()+"/G"+cp5.get(ColorWheel.class, "fillWheel").g()+"/B"+cp5.get(ColorWheel.class, "fillWheel").b(), dataX+(dataXSub*2), dataY);

        fill(0);
        text("STROKE R"+cp5.get(ColorWheel.class, "strokeWheel").r()+"/G"+cp5.get(ColorWheel.class, "strokeWheel").g()+"/B"+cp5.get(ColorWheel.class, "strokeWheel").b(), dataX+(dataXSub*3)+1, dataY+1);
        fill(cp5.get(ColorWheel.class, "strokeWheel").r(), cp5.get(ColorWheel.class, "strokeWheel").g(), cp5.get(ColorWheel.class, "strokeWheel").b(), Stroke_Alpha);
        text("STROKE R"+cp5.get(ColorWheel.class, "strokeWheel").r()+"/G"+cp5.get(ColorWheel.class, "strokeWheel").g()+"/B"+cp5.get(ColorWheel.class, "strokeWheel").b(), dataX+(dataXSub*3), dataY);

        fill(255);
        text("FPS "+int(frameRate), dataX+(dataXSub*4), dataY);

        if (oscIn) {
          fill(0);
          text("OSC IN", (W-60)+1, dataY+1);
          fill(0, 255, 0);
          text("OSC IN", W-60, dataY);
        }
        if (audioInON) {
          fill(0);
          text("AUDIO IN", (W-120)+1, dataY+1);
          fill(255, 0, 160);
          text("AUDIO IN", W-120, dataY);
        }
      } else {
        textAlign(LEFT);
        textSize(9);

        fill(0);
        text("AREA "+str(W)+" / "+str(H)+" P", dataX+1, dataY-10+1);
        fill(210);
        text("AREA "+str(W)+" / "+str(H)+" P", dataX, dataY-10);

        fill(0);
        text("POS X "+mouseX+" / Y "+mouseY, dataX+1, dataY+10+1);
        fill(120);
        text("POS X "+mouseX+" / Y "+mouseY, dataX, dataY+10);

        fill(0);
        text("FILL R"+cp5.get(ColorWheel.class, "fillWheel").r()+"/G"+cp5.get(ColorWheel.class, "fillWheel").g()+"/B"+cp5.get(ColorWheel.class, "fillWheel").b(), dataX+dataXSub+1, dataY-10+1);
        fill(cp5.get(ColorWheel.class, "fillWheel").r(), cp5.get(ColorWheel.class, "fillWheel").g(), cp5.get(ColorWheel.class, "fillWheel").b(), Fill_Alpha);
        text("FILL R"+cp5.get(ColorWheel.class, "fillWheel").r()+"/G"+cp5.get(ColorWheel.class, "fillWheel").g()+"/B"+cp5.get(ColorWheel.class, "fillWheel").b(), dataX+dataXSub, dataY-10);

        fill(0);
        text("STROKE R"+cp5.get(ColorWheel.class, "strokeWheel").r()+"/G"+cp5.get(ColorWheel.class, "strokeWheel").g()+"/B"+cp5.get(ColorWheel.class, "strokeWheel").b(), dataX+dataXSub+1, dataY+10+1);
        fill(cp5.get(ColorWheel.class, "strokeWheel").r(), cp5.get(ColorWheel.class, "strokeWheel").g(), cp5.get(ColorWheel.class, "strokeWheel").b(), Stroke_Alpha);
        text("STROKE R"+cp5.get(ColorWheel.class, "strokeWheel").r()+"/G"+cp5.get(ColorWheel.class, "strokeWheel").g()+"/B"+cp5.get(ColorWheel.class, "strokeWheel").b(), dataX+dataXSub, dataY+10);
        if (oscIn) {
          fill(0);
          text("OSC IN", (W-60)+1, dataY+10+1);
          fill(0, 255, 0);
          text("OSC IN", W-60, dataY+10);
        }
        if (audioInON) {
          fill(0);
          text("AUDIO IN", (W-60)+1, dataY-10+1);
          fill(255, 0, 160);
          text("AUDIO IN", W-60, dataY-10);
        }
      }
    }
  }
}


//------------------------------------------ // WORK GRID//  ---------------------------------------------------

void workGridMode() {
  float cantidadX = 40;
  float cantidadY = 40;

  for (float x = 0; x < cantidadX; x++) { // HORIZONTALES
    float espacio = W/cantidadX;
    float pos = espacio*x;
    stroke(255);
    strokeWeight(1);
    line(pos, 0, pos, H);
  }
  for (float y = 0; y < cantidadX; y++) { // VERTICALES
    float espacio = H/cantidadY;
    float pos = espacio*y;
    stroke(255);
    strokeWeight(1);
    line(0, pos, W, pos);
  }
  stroke(255, 0, 0);    // ROJAS CENTRO
  strokeWeight(2);
  line(0, H/2, W, H/2);
  line(W/2, 0, W/2, H);
}


//------------------------------------------ // BLUE PRINT //  ---------------------------------------------------

void bluePrintMode() {
  image(bluePrint, 0, 0, W, H);
}


//------------------------------------------ // SALVAR JPG // --------------------------------------------------------------------------------

public void salvar() {
  canvas.save("images/"+cp5.get(Textfield.class, "imagen").getText()+"_"+W+"_"+H+".jpg");
}


//------------------------------------------ // WORKSPACE SETTINGS //  ---------------------------------------------------

void workspaceSize() {
  if (int(cp5.get(Textfield.class, "W").getText())>399 && int(cp5.get(Textfield.class, "H").getText())>399) {
    W = int(cp5.get(Textfield.class, "W").getText());
    H = int(cp5.get(Textfield.class, "H").getText());
    accordion.setPosition(W, menuH);
    canvas = createGraphics(W, H, P2D);
    canvas.background(0);
  }
}
