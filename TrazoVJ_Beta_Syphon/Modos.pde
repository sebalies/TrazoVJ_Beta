float Erase_Size;
int Erase_Mode;
int Erase_ON;
int fillWheel = color(100);
int strokeWheel = color(100);
float Fill_Alpha = 255;
int Fill_Alpha_Rand, Fill_RGB_Sin;
float Stroke_Alpha= 255;
int Stroke_Alpha_Rand, Stroke_RGB_Sin;
float Stroke_RGB_Sin_Rate, Trazo_Sin_Rate, Fill_RGB_Sin_Rate;
int Trazo_FX_Mode, Trazo_Cap_Mode, Trazo_Sin, Trazo_Rand;
int Shape_Rotation, Shape_Spray, Shape_Size_Sin, Shape_Stroke_Rand, Shape_Size_Rand;
float ShapePosX, ShapePosY, ShapeTam, Shape_Rotation_Vel, Shape_Rotation_Offset, Shape_Size_Sin_Rate, Shape_Spray_Amplitud;
float Graphity_Size, Graphity_Size_Sin_Rate, Graphity_Rotation, Graphity_Spray_Amplitud, GraphityPosX, GraphityPosY, GraphityTam, Graphity_Rotation_Vel;
int Graphity_Size_Rand, Graphity_Size_Sin, Graphity_Spray, brush, Graphity_Rotation_On;
String TEXTO_IN = "";
int Text_Size_Rand, Text_Size_Sin, Text_Rotation, Text_Spray;
float Text_Size_Sin_Rate, Text_Rotation_Vel, Text_Rotation_Offset, textTam, TextPosX, TextPosY, Text_Spray_Amp;
int Pattern_Size_Rand, Pattern_Size_Sin, Pattern_Stroke_Rand, Pattern_Rotation, Pattern_Mode;
float posX, posY, largoW, largoH;
float PatternX, PatternY, Pattern_SizeX, Pattern_SizeY, PatternW, PatternH, Pattern_Spacing_X, Pattern_Spacing_Y, Pattern_Size_Sin_Rate, Pattern_Rotation_Vel, Pattern_Rotation_Offset, Pattern_CountX, Pattern_CountY;
float Pattern_Stroke_Width = 1;
float angleRotation;
float sin_amplitud = 255; 
float sin_angle = 0;
float sin_angleF = 0;

float FR, FG, FB, SR, SG, SB;

float RR = 0;
float GG = 180;
float BB = 255;
float AA = 255;

float SRR = 255;
float SGG = 0;
float SBB = 260;
float SAA = 255;

float rancfr =  random(255);
float rancfg =  random(255);
float rancfb =  random(255);
float rancfa =  random(Fill_Alpha);

float rancsr =  random(255);
float rancsg =  random(255);
float rancsb =  random(255);
float rancsa =  random(Stroke_Alpha);

//---------------------------------------------------// TRAZO MODO // -----------------------------------------------------------------------

void trazoModo() {
  colorsFunctions();

  if (Trazo_Rand == 1) {                                                 
    float randStroke =  random(Trazo_Width);
    canvas.strokeWeight(randStroke);
  } else {
    canvas.strokeWeight(Trazo_Width);
  }

  if (Trazo_Sin == 1) {                                                   
    float sinWeight = (sin(sin_angle) * Trazo_Width/2) + Trazo_Width/2;
    canvas.strokeWeight(sinWeight);

    sin_angle += Trazo_Sin_Rate;
  }

  canvas.strokeJoin(ROUND);

  if (Trazo_Cap_Mode == 1) {                                               
    canvas.strokeCap(SQUARE);
  } else {
    canvas.strokeCap(ROUND);
  }

  float ranX = random(Trazo_FX);                                 
  float ranY = random(Trazo_FX);

  if (Trazo_FX_Mode == 1) {                                          
    canvas.line(mouseX+ranX, mouseY+ranY, pmouseX-ranX, pmouseY-ranY);
  } else {
    canvas.line((mouseX+ranX), mouseY+ranY, pmouseX+ranX, pmouseY+ranY);
  }
}

//---------------------------------------------------// SHAPE MODO // ------------------------------------------------------------------------------------------------------------------------------------------------

void shapeModo() {
  colorsFunctions();


  if (Shape_Stroke_Rand == 1) {                                               
    float randStroke =  random(Shape_Stroke_Width);
    canvas.strokeWeight(randStroke);
  } else {
    canvas.strokeWeight(Shape_Stroke_Width);
  }


  //---------------------------------------------// RECTANGULO 

  if (shape == 0) {
    ShapePosX =mouseX-(Shape_Size/2);
    ShapePosY =mouseY-(Shape_Size/2);
    float ranf =  random(Shape_Size);

    if (Shape_Size_Rand == 1) {
      ShapePosX =mouseX-(ranf/2);
      ShapePosY =mouseY-(ranf/2);
      ShapeTam=ranf;
    } else {
      ShapeTam=Shape_Size;
    }

    if (Shape_Rotation == 1) {
      angleRotation = Shape_Rotation_Vel+angleRotation;
      canvas.translate(mouseX, mouseY);
      canvas.rotate(angleRotation);
      ShapePosX =0+Shape_Rotation_Offset;
      ShapePosY =-ShapeTam/2;
    } 

    if (Shape_Spray == 1) {
      ShapePosX = (mouseX - map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud))-(ShapeTam/2);
      ShapePosY = (mouseY - map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud))-(ShapeTam/2);
    } 

    if (Shape_Size_Sin == 1) {                                                   
      float sinWeight = (sin(sin_angle) * Shape_Size/2) + Shape_Size/2;
      ShapeTam = sinWeight;
      ShapePosX = mouseX-(ShapeTam/2);
      ShapePosY = mouseY-(ShapeTam/2);

      sin_angle += Shape_Size_Sin_Rate;
    }

    canvas.rect(ShapePosX, ShapePosY, ShapeTam, ShapeTam);
  }

  //---------------------------------------------// CIRCULO


  if (shape == 1) {
    ShapePosX = mouseX;
    ShapePosY = mouseY;

    float ranf =  random(Shape_Size);

    if (Shape_Size_Rand == 1) {
      ShapeTam=ranf;
    } else {
      ShapeTam=Shape_Size;
    }

    if (Shape_Rotation == 1) {
      angleRotation = Shape_Rotation_Vel+angleRotation;
      canvas.translate(mouseX, mouseY);
      canvas.rotate(angleRotation);
      ShapePosX =(ShapeTam/2)+Shape_Rotation_Offset;
      ShapePosY =-ShapeTam/2;
    } 

    if (Shape_Spray == 1) {
      canvas.translate(mouseX, mouseY);
      ShapePosX = map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud);
      ShapePosY = map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud);
    }

    if (Shape_Size_Sin == 1) {                                                   
      float sinWeight = (sin(sin_angle) * Shape_Size/2) + Shape_Size/2;
      ShapeTam = sinWeight;
      ShapePosX =0;
      ShapePosY =0;

      sin_angle += Shape_Size_Sin_Rate;
    }

    canvas.ellipse (ShapePosX, ShapePosY, ShapeTam, ShapeTam);
  }

  //---------------------------------------------// TRIANGULO

  if (shape == 2) {

    ShapeTam=Shape_Size;
    ShapePosX =mouseX;
    ShapePosY =mouseY;
    float ranf =  random(Shape_Size);
    canvas.rotate(0);

    if (Shape_Size_Rand == 1) {
      ShapeTam=ranf;
    } 

    if (Shape_Rotation == 1) {
      angleRotation = Shape_Rotation_Vel+angleRotation;
      canvas.translate(mouseX, mouseY);
      canvas.rotate(angleRotation);
      ShapePosX =(ShapeTam/2)+Shape_Rotation_Offset;
      ShapePosY =-ShapeTam/2;
    }

    if (Shape_Spray == 1) {
      canvas.translate(0, 0);
      ShapePosX = map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud);
      ShapePosY = map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud);
    } 

    if (Shape_Size_Sin == 1) {                                                   
      float sinWeight = (sin(sin_angle) * Shape_Size/2) + Shape_Size/2;
      ShapeTam = sinWeight;


      sin_angle += Shape_Size_Sin_Rate;
    }

    canvas.triangle (ShapePosX-(ShapeTam/2), ShapePosY+(ShapeTam/2), 
      ShapePosX, ShapePosY-(ShapeTam/2), 
      ShapePosX+(ShapeTam/2), ShapePosY+(ShapeTam/2));
  }

  //---------------------------------------------// SHAPES


  if (shape == 3) {
    cargarSVG();

    funcionesVarias();
    vectorSVG.disableStyle();    
    stroke(SRR, SGG, SBB, SAA);
    fill(RR, GG, BB, AA);
    strokeWeight(Shape_Stroke_Width);
    shape(vectorSVG, map(ShapePosX, 0, W, 0, W+menuW)-(ShapeTam/2)-20, ShapePosY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
  }
  if (shape == 4) {
    cargarSVG();

    funcionesVarias();
    vectorSVG.disableStyle();    
    stroke(SRR, SGG, SBB, SAA);
    fill(RR, GG, BB, AA);
    strokeWeight(Shape_Stroke_Width);
    shape(vectorSVG, map(ShapePosX, 0, W, 0, W+menuW)-(ShapeTam/2)-20, ShapePosY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
  }
  if (shape == 5) {
    cargarSVG();
    funcionesVarias();
    vectorSVG.disableStyle();    
    stroke(SRR, SGG, SBB, SAA);
    fill(RR, GG, BB, AA);
    strokeWeight(Shape_Stroke_Width);
    shape(vectorSVG, map(ShapePosX, 0, W, 0, W+menuW)-(ShapeTam/2)-20, ShapePosY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
  }
  if (shape == 6) {
    cargarSVG();
    funcionesVarias();
    vectorSVG.disableStyle();    
    stroke(SRR, SGG, SBB, SAA);
    fill(RR, GG, BB, AA);
    strokeWeight(Shape_Stroke_Width);
    shape(vectorSVG, map(ShapePosX, 0, W, 0, W+menuW)-(ShapeTam/2)-20, ShapePosY-(ShapeTam/2)-20, ShapeTam, ShapeTam);
  }
}  

//---------------------------------------------------// GRAPHITY MODO // ------------------------------------------------------------------------------------------------------------------------------------------------

void graphityModo() {
  canvas.translate(mouseX, mouseY);
  canvas.rotate(Graphity_Rotation);
  GraphityPosX = 0;
  GraphityPosY = 0;
  GraphityTam = Graphity_Size;

  float ranSize =  random(Graphity_Size);

  if (Graphity_Size_Rand == 1) {
    GraphityTam = ranSize;
  } 

  if (Graphity_Size_Sin == 1) {                                                   
    float sinWeight = (sin(sin_angle) * Graphity_Size/2) + Graphity_Size/2;
    GraphityTam = sinWeight;

    sin_angle += Graphity_Size_Sin_Rate;
  }
  if (Graphity_Rotation_On == 1) {      
    Graphity_Rotation = (Graphity_Rotation + Graphity_Rotation_Vel) % 360;
    cp5.get(Slider.class, "Graphity_Rotation") .setValue(Graphity_Rotation);
  }

  if (Graphity_Spray == 1) {
    GraphityPosX = 0 + map(random(Graphity_Spray_Amplitud), 0, Graphity_Spray_Amplitud, -Graphity_Spray_Amplitud, Graphity_Spray_Amplitud);
    GraphityPosY = 0 + map(random(Graphity_Spray_Amplitud), 0, Graphity_Spray_Amplitud, -Graphity_Spray_Amplitud, Graphity_Spray_Amplitud);
  } 

  cargarPNG();
  canvas.tint(RR, GG, BB, AA);
  canvas.image(brushPNG, GraphityPosX-(GraphityTam/2), GraphityPosY-(GraphityTam/2), GraphityTam, GraphityTam);
}

//float Graphity_Size, Graphity_Size_Sin_Rate, Graphity_Rotation, Graphity_Spray_Amplitud;
//int Graphity_Size_Rand, Graphity_Size_Sin, Graphity_Spray;

//---------------------------------------------------// TEXTO MODO // ------------------------------------------------------------------------------------------------------------------------------------------------

void textoModo() {
  colorsFunctions();
  TextPosX = mouseX;
  TextPosY = mouseY;
  String textoAdentro = cp5.get(Textfield.class, "TEXTO_IN").getText();
  int largoTexto = textoAdentro.length();

  if (Text_Spray == 1) { // Random Seleccionando una letra
    char letra1 = textoAdentro.charAt(int(random(largoTexto)));
    textoAdentro=str(letra1);
    TextPosX = mouseX+map(random(Text_Spray_Amp), 0, Text_Spray_Amp, -Text_Spray_Amp, Text_Spray_Amp);
    TextPosY = mouseY+map(random(Text_Spray_Amp), 0, Text_Spray_Amp, -Text_Spray_Amp, Text_Spray_Amp);
  }

  if (Text_Size_Rand == 1) {
    float ranSize =  random(Text_Size);
    textTam = ranSize;
  } else {
    textTam = Text_Size;
  }

  if (Text_Rotation == 1) {
    angleRotation = Text_Rotation_Vel+angleRotation;
    canvas.translate(mouseX, mouseY);
    canvas.rotate(angleRotation);
    TextPosX = 0+Text_Rotation_Offset;
    TextPosY = 0;
  } else {
    canvas.translate(0, 0);
    canvas.rotate(0);
  }

  if (Text_Size_Sin == 1) {                                                   
    float sinWeight = (sin(sin_angle) * textTam/2) + textTam/2;
    textTam = sinWeight;

    sin_angle += Text_Size_Sin_Rate;
  }

  canvas.textAlign(CENTER);
  canvas.textSize(textTam);
  canvas.text (textoAdentro, TextPosX, TextPosY);
}


//---------------------------------------------------// PATTERN MODO // ------------------------------------------------------------------------------------------------------------------------------------------------

void patternModo() {
  colorsFunctions();
  PatternW = Pattern_SizeX;
  PatternH = Pattern_SizeY;
  PatternX = mouseX;
  PatternY = mouseY;

  if (Pattern_Stroke_Rand == 1) {
    float randStroke =  random(Pattern_Stroke_Width);
    canvas.strokeWeight(randStroke);
  } else {
    canvas.strokeWeight(Pattern_Stroke_Width);
  }

  if (Pattern_Size_Rand == 1) {
    canvas.rectMode(CENTER);
    PatternW = random(Pattern_SizeX);
    PatternH = random(Pattern_SizeY);
  } else {
    canvas.rectMode(CORNER);
  }

  if (Pattern_Size_Sin == 1) {
    canvas.rectMode(CENTER);
    float sinWeight = (sin(sin_angle) * Pattern_SizeX/2) + (Pattern_SizeX/2);
    float sinHeight = (sin(sin_angle) * Pattern_SizeY/2) + (Pattern_SizeY/2);
    PatternW = sinWeight;
    PatternH = sinHeight;

    sin_angle += Pattern_Size_Sin_Rate;
  } else {
    canvas.rectMode(CORNER);
  }

  if (Pattern_Rotation == 1) {
    pushMatrix();
    angleRotation = Pattern_Rotation_Vel+angleRotation;
    canvas.translate(mouseX, mouseY);
    canvas.rotate(angleRotation);
    PatternX = 0+Pattern_Rotation_Offset;
    PatternY = 0;
    popMatrix();
  } else {
    canvas.translate(0, 0);
    canvas.rotate(0);
  }

  for (int x = 0; x<Pattern_CountX; x++) {
    for (int y = 0; y < Pattern_CountY; y++) {
      posX = x*Pattern_Spacing_X;
      posY = y*Pattern_Spacing_Y;
      largoW = Pattern_Spacing_X*(Pattern_CountX-1)+Pattern_SizeX;
      largoH = Pattern_Spacing_Y*(Pattern_CountY-1)+Pattern_SizeY;

      if (Pattern_Mode == 1) {
        canvas.rect (
          (PatternX-posX+(largoW/2))-Pattern_SizeX, 
          (PatternY-posY+(largoH/2))-Pattern_SizeY, 
          PatternW, 
          PatternH
          );
      } else {
        canvas.ellipse(PatternX-posX+(largoW/2), PatternY-posY+(largoH/2), PatternW, PatternH );
      }
    }
  }
}

void cargarPNG() {
  brushPNG = loadImage("brushes/brush"+(brush+1)+".png");
}

void cargarSVG() {
  vectorSVG = loadShape("shapes/shape"+(shape-2)+".svg");
}



void funcionesVarias() {
  ShapePosX = mouseX;
  ShapePosY = mouseY;
  ShapeTam=Shape_Size;

  float ranf =  random(Shape_Size);

  if (Shape_Size_Rand == 1) {
    ShapeTam=ranf;
  } 

  if (Shape_Rotation == 1) {
    angleRotation = Shape_Rotation_Vel+angleRotation;
    canvas.translate(mouseX, mouseY);
    canvas.rotate(angleRotation);
    ShapePosX = mouseX+Shape_Rotation_Offset;
    ShapePosY = mouseY;
  }

  if (Shape_Spray == 1) {
    canvas.translate(mouseX, mouseY);
    ShapePosX = mouseX+map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud);
    ShapePosY = mouseY+map(random(Shape_Spray_Amplitud), 0, Shape_Spray_Amplitud, -Shape_Spray_Amplitud, Shape_Spray_Amplitud);
  } 

  if (Shape_Size_Sin == 1) {                                                   
    float sinWeight = (sin(sin_angle) * Shape_Size/2) + Shape_Size/2;
    ShapeTam = sinWeight;
    ShapePosX =mouseX;
    ShapePosY =mouseY;

    sin_angle += Shape_Size_Sin_Rate;
  }
}