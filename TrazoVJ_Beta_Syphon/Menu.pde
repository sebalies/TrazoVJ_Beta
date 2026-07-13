int alphaVal = 0;
int alphaDelta = 1;
float Trazo_Width = 10;
float Trazo_FX=0;
float Shape_Size = 150;
float Shape_Stroke_Width = 10;
boolean Cursor= false;
boolean workGrid = false;

int TransCol = 10;
int TransReg = 10;

void menuGui() {    

  // MENU DESPLEGABLE // -------------------------------------------------------------

  if (gridON == false) {
  }

  strokeWeight(0);                                                    
  fill(0);
  rect(W, 0, menuW, H);

  int sizeTransW = menuW / TransCol;
  int sizeTransH = menuH / TransReg;
  for (int x = 0; x < TransCol; x++) {
    for (int y = 0; y < TransCol; y++) {
      int posTransW = W + (sizeTransW * x);
      int posTransH = (sizeTransH * y);
      
      if ((x+y) % 2 == 0){
      fill(190, 255);    
      }else{
      fill(220, 255); 
      }
      
      stroke(0);
      strokeWeight(0);
      
      rect(posTransW, posTransH, sizeTransW, sizeTransH);
    }
  }

  //------------------------------------------ // MENU MODO TRAZO // -------------------------------------------------------------

  if (MODE == 0) {   
    if (accordionMarca != 1) {
      accordion.close();
      accordion.open( 0, 1);
      accordionMarca = 1;
    }

    strokeWeight(0);                                                      

    fill(SRR, SGG, SBB, SAA);
    ellipse(W+(menuW/2), menuH/2, map(Trazo_Width, 0, 300, 0, (menuW-20)), map(Trazo_Width, 0, 300, 0, (menuH-20)));

    // CURSOR // -------------------------------------------------------------

    if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {                                                                                       
      strokeWeight(1);
      stroke(255, 255);
      fill(0, 0);
      ellipse(mouseX, mouseY, Trazo_Width, Trazo_Width);
    }
  }

  //------------------------------------------ // MENU MODO SHAPE // -------------------------------------------------------------


  if (MODE == 1) {    
    if (accordionMarca != 2) {
      accordion.close();
      accordion.open(0, 2);
      accordionMarca = 2;
    }

    //------------------------------------------ // RECTANGULO
    if (shape == 0) {                                                    
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      strokeWeight(reTrazo_Widthmap);
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      rect((W+(menuW/2))-(reShape_Sizemap/2), (menuH/2)-(reShape_Sizemap/2), reShape_Sizemap, reShape_Sizemap);


      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {                                              
        strokeWeight(1);
        stroke(255, 255);
        fill(0, 0);
        rect(mouseX-(Shape_Size/2), mouseY-(Shape_Size/2), Shape_Size, Shape_Size);
      }
    }

    //------------------------------------------ // CIRCULO
    if (shape == 1) {                                                       
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      strokeWeight(reTrazo_Widthmap);
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      ellipse(W+(menuW/2), menuH/2, reShape_Sizemap, reShape_Sizemap);

      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {                                               
        strokeWeight(1);
        stroke(255, 255);
        fill(0, 0);
        ellipse(mouseX, mouseY, Shape_Size, Shape_Size);
      }
    }

    //------------------------------------------ // TRIANGULO
    if (shape == 2) {                                                     
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      strokeWeight(reTrazo_Widthmap);
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      triangle(W+(menuW/2), (menuH/2)-(reShape_Sizemap/2), 
        (W+(menuW/2))-(reShape_Sizemap/2), (menuH/2)+(reShape_Sizemap/2), 
        (W+(menuW/2))+(reShape_Sizemap/2), (menuH/2)+(reShape_Sizemap/2));

      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {                                              
        strokeWeight(1);  
        stroke(255, 255);
        fill(0, 0);
        triangle(mouseX, mouseY-(Shape_Size/2), mouseX-(Shape_Size/2), mouseY+(Shape_Size/2), mouseX+(Shape_Size/2), mouseY+(Shape_Size/2));
      }
    }

    //------------------------------------------ // SHAPE 1
    if (shape == 3) {  
      cargarSVG();
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      vectorSVG.disableStyle();    
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      strokeWeight(reTrazo_Widthmap);
      shape(vectorSVG, W+(menuW/2)-(reShape_Sizemap/2), menuH/2-(reShape_Sizemap/2), reShape_Sizemap, reShape_Sizemap);

      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {  
        vectorSVG.disableStyle();  
        strokeWeight(1);  
        stroke(255, 255);
        fill(0, 0);
        shape(vectorSVG, mouseX-(ShapeTam/2)-20, mouseY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
      }
    }

    //------------------------------------------ // SHAPE 2
    if (shape == 4) { 
      cargarSVG();
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      vectorSVG.disableStyle();    
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      strokeWeight(reTrazo_Widthmap);
      shape(vectorSVG, W+(menuW/2)-(reShape_Sizemap/2), menuH/2-(reShape_Sizemap/2), reShape_Sizemap, reShape_Sizemap);

      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {  
        vectorSVG.disableStyle();  
        strokeWeight(1);  
        stroke(255, 255);
        fill(0, 0);
        shape(vectorSVG, mouseX-(ShapeTam/2)-20, mouseY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
      }
    }

    //------------------------------------------ // SHAPE 3
    if (shape == 5) {  
      cargarSVG();
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      vectorSVG.disableStyle();    
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      strokeWeight(reTrazo_Widthmap);
      shape(vectorSVG, W+(menuW/2)-(reShape_Sizemap/2), menuH/2-(reShape_Sizemap/2), reShape_Sizemap, reShape_Sizemap);

      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {  
        vectorSVG.disableStyle();  
        strokeWeight(1);  
        stroke(255, 255);
        fill(0, 0);
        shape(vectorSVG, mouseX-(ShapeTam/2)-20, mouseY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
      }
    }

    //------------------------------------------ // SHAPE 4
    if (shape == 6) {  
      cargarSVG();
      float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 10);
      float reShape_Sizemap = map (Shape_Size, 0, 300, 0, (menuW-20));
      vectorSVG.disableStyle();    
      stroke(SRR, SGG, SBB, SAA);
      fill(RR, GG, BB, AA);
      strokeWeight(reTrazo_Widthmap);
      shape(vectorSVG, W+(menuW/2)-(reShape_Sizemap/2), menuH/2-(reShape_Sizemap/2), reShape_Sizemap, reShape_Sizemap);

      if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {  
        vectorSVG.disableStyle();  
        strokeWeight(1);  
        stroke(255, 255);
        fill(0, 0);
        shape(vectorSVG, mouseX-(ShapeTam/2)-20, mouseY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
      }
    }
  }

  //------------------------------------------ // MENU MODO GRAPHITY // -------------------------------------------------------------


  if (MODE == 2) {    
    if (accordionMarca != 3) {
      accordion.close();
      accordion.open(0, 3);
      accordionMarca = 3;
    }

    float reSize = map (Graphity_Size, 0, 300, 0, (menuW-20));

    tint(RR, GG, BB, AA);
    cargarPNG();
    image(brushPNG, W+((menuW/2)-(reSize/2)), (menuH/2)-(reSize/2), reSize, reSize);
    tint(255);
  }

  //------------------------------------------ // MENU MODO TEXT // -------------------------------------------------------------

  if (MODE == 3) {                                                         
    if (accordionMarca != 4) {
      accordion.close();
      accordion.open(0, 4);
      accordionMarca = 4;
    }

    fill(RR, GG, BB, AA);
    float reShape_Sizemap = map (Text_Size, 0, 1700, 10, (menuW-20));
    textAlign(CENTER);
    textSize(reShape_Sizemap);
    text (cp5.get(Textfield.class, "TEXTO_IN").getText(), W+(menuW/2), menuH/2);

    if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {                                                
      fill(255, 50);
      textSize(Text_Size);
      textAlign(CENTER);
      text (cp5.get(Textfield.class, "TEXTO_IN").getText(), mouseX, mouseY);
    }
  } 

  //------------------------------------------ // MENU MODO PATTERN // -------------------------------------------------------------


  if (MODE == 4) {        
    if (accordionMarca != 5) {
      accordion.close();
      accordion.open(0, 5);
      accordionMarca = 5;
    }


    float reTrazo_Widthmap = map (Shape_Stroke_Width, 0, 40, 0, 3);
    strokeWeight(reTrazo_Widthmap);
    stroke(SRR, SGG, SBB, SAA);
    fill(RR, GG, BB, AA);
    float reShape_SizemapX = map (Pattern_SizeX, 0, 150, 0, 25);
    float reShape_SizemapY = map (Pattern_SizeY, 0, 150, 0, 25);
    float reShape_SizemapSpacX = map (Pattern_Spacing_X, 0, 200, 2, 8);
    float reShape_SizemapSpacY = map (Pattern_Spacing_Y, 0, 200, 2, 8);

    for (int x = 0; x<Pattern_CountX; x++) {
      for (int y = 0; y<Pattern_CountY; y++) {
        float posX = x*reShape_SizemapSpacX;
        float posY = y*reShape_SizemapSpacY;
        float largoXX = reShape_SizemapSpacX*(Pattern_CountX-1)+reShape_SizemapX;
        float largoYY = reShape_SizemapSpacY*(Pattern_CountY-1)+reShape_SizemapY;
        float initX = W+(menuW/2);
        float initY = menuH/2;
        rect ((((initX+posX)-(reShape_SizemapX/2))-(largoXX/2)), 
          ((((initY)+posY)-(reShape_SizemapY/2))-(largoYY/2)), 
          reShape_SizemapX, reShape_SizemapY);
      }
    }

    if (Cursor == true && eraseON == false && gridON == false && mouseX < W && Gost_Mode == 0) {                                                 
      strokeWeight(1);
      stroke(255, 255);
      fill(0, 0);
      for (int x = 0; x<Pattern_CountX; x++) {
        for (int y = 0; y<Pattern_CountY; y++) {
          float posX = x*Pattern_Spacing_X;
          float posY = y*Pattern_Spacing_Y;
          float largoXXX = Pattern_Spacing_X*(Pattern_CountX-1)+Pattern_SizeX;
          float largoYYY = Pattern_Spacing_Y*(Pattern_CountY-1)+Pattern_SizeY;

          rect (
            (mouseX-posX+(largoW/2))-Pattern_SizeX, 
            (mouseY-posY+(largoH/2))-Pattern_SizeY, 
            PatternW, 
            PatternH
            );
        }
      }
    }
  }
}
