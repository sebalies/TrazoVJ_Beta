boolean oscIn;
String[] MODE_Titles = {"TRAZO", "SHAPE", "GRAPHITY", "TEXT", "PARTTERN"};
String[] Shape_Titles = {"RECTANGLE", "ELLIPSE", "TRIANGLE", "SHAPE1", "SHAPE2", "SHAPE3", "SHAPE4"};
String[] Brush_Titles = {"BRUSH1, BRUSH2, BRUSH3, BRUSH4, BRUSH5"};

int Ancho = 480;
int Alto = 420;
int margen = 20;
int espacioReg = 15;
int espacioCol = 120;
int[] Regs = new int[35];
int[] Cols = new int[6];

//------------------------------------------ // OSC MONITOR //  ---------------------------------------------------

void oscMonitorWindow() {

  if (oscIn) {
    strokeWeight(0);
    fill(30, 150);
    rect((W/2)-(Ancho/2), (H/2)-(Alto/2), Ancho, Alto);
    fill(15, 150);
    rect((W/2)-(Ancho/2), ((H/2)-(Alto/2))-20, Ancho, 20);

    textAlign(LEFT);
    textSize(11);
    fill(0, 255, 0);
    text("OSC MONITOR / ON", Cols[0], (H/2)-(Alto/2)-6);
    textSize(10);
    text("/Global", Cols[0], Regs[0]);
    text("/Fill", Cols[0], Regs[5]);
    text("/Stroke", Cols[0], Regs[16]);
    text("/Trazo", Cols[1], Regs[0]);
    text("/Shape", Cols[1], Regs[9]);
    text("/Graphity", Cols[2], Regs[0]);
    text("/Text", Cols[2], Regs[12]);
    text("/Pattern", Cols[3], Regs[0]);
    parametros();
  }
}

void parametros() {
  for (int i=0; i<35; i++) {
    Regs[i]=(((H/2)-(Alto/2))+20)+(espacioReg*i);
  }
  for (int i=0; i<6; i++) {
    Cols[i]=(((W/2)-(Ancho/2))+10)+(espacioCol*i);
  }
  //------------------------------------// GLOBAL //  
  fill(255);
  textSize(9);
  text("/MODE>"+MODE, Cols[0], Regs[1]);
  text("/Erase_Size>"+nf(Erase_Size, 1, 2), Cols[0], Regs[2]);
  text("/Erase_Mode>"+Erase_Mode, Cols[0], Regs[3]);

  //------------------------------------// FILL // 
  fill(255);
  textSize(9);
  text("/R "+int(FR), Cols[0], Regs[6]);
  text("/G "+int(FG), Cols[0], Regs[7]);
  text("/B "+int(FB), Cols[0], Regs[8]);
  text("/R_Rand "+Fill_R_Rand, Cols[0], Regs[9]);
  text("/G_Rand "+Fill_G_Rand, Cols[0], Regs[10]);
  text("/B_Rand "+Fill_B_Rand, Cols[0], Regs[11]);
  text("/RGB_Sin "+ Fill_RGB_Sin, Cols[0], Regs[12]);
  text("/RGB_Sin_Rate "+ nf(Fill_RGB_Sin_Rate, 1, 2), Cols[0], Regs[13]);
  text("/Alpha "+ int(Fill_Alpha), Cols[0], Regs[14]);
  text("/Alpha_Rand "+ Fill_Alpha_Rand, Cols[0], Regs[15]);

  //------------------------------------// STROKE // 
  text("/R "+int(SR), Cols[0], Regs[17]);
  text("/G "+int(SG), Cols[0], Regs[18]);
  text("/B "+int(SB), Cols[0], Regs[19]);
  text("/R_Rand "+Stroke_R_Rand, Cols[0], Regs[20]);
  text("/G_Rand "+Stroke_G_Rand, Cols[0], Regs[21]);
  text("/B_Rand "+Stroke_B_Rand, Cols[0], Regs[22]);
  text("/RGB_Sin "+ Stroke_RGB_Sin, Cols[0], Regs[23]);
  text("/RGB_Sin_Rate "+ nf(Stroke_RGB_Sin_Rate, 1, 2), Cols[0], Regs[24]);
  text("/Alpha "+ int(Stroke_Alpha), Cols[0], Regs[25]);
  text("/Alpha_Rand "+ Stroke_Alpha_Rand, Cols[0], Regs[26]);

  //------------------------------------// TRAZO  //  

  fill(255);
  textSize(9);
  text("/Width "+int(Trazo_Width), Cols[1], Regs[1]);
  text("/Cap_Mode "+Trazo_Cap_Mode, Cols[1], Regs[2]);
  text("/W_Rand "+Trazo_Rand, Cols[1], Regs[3]);
  text("/W_Sin "+Trazo_Sin, Cols[1], Regs[4]);
  text("/W_Sin_Rate "+nf(Trazo_Sin_Rate, 1, 2), Cols[1], Regs[5]);
  text("/FX "+int(Trazo_FX), Cols[1], Regs[6]);
  text("/FX_Mode "+Trazo_FX_Mode, Cols[1], Regs[7]);

  //------------------------------------// SHAPE  //  

  fill(255);
  textSize(9);
  text("/Shape_Mode "+shape, Cols[1], Regs[10]);
  text("/Size "+int(Shape_Size), Cols[1], Regs[11]);
  text("/Size_Rand "+Shape_Size_Rand, Cols[1], Regs[12]);
  text("/Stroke_Width "+int(Shape_Stroke_Width), Cols[1], Regs[13]);
  text("/Size_Sin "+Shape_Size_Sin, Cols[1], Regs[14]);
  text("/Size_Sin_Rate "+nf(Shape_Size_Sin_Rate, 1, 2), Cols[1], Regs[15]);
  text("/Stroke_Rand "+Shape_Stroke_Rand, Cols[1], Regs[16]);
  text("/Rotation "+Shape_Rotation, Cols[1], Regs[17]);
  text("/Rotation_Vel "+nf(Shape_Rotation_Vel, 1, 2), Cols[1], Regs[18]);
  text("/Rotation_Offset "+int(Shape_Rotation_Offset), Cols[1], Regs[19]);
  text("/Spray "+Shape_Spray, Cols[1], Regs[20]);
  text("/Spray_Amp "+int(Shape_Spray_Amplitud), Cols[1], Regs[21]);

  //------------------------------------// GRAPHITY  //  

  fill(255);
  textSize(9);
  text("/Graphity_Mode "+brush, Cols[2], Regs[1]);
  text("/Size "+int(Graphity_Size), Cols[2], Regs[2]);
  text("/Size_Rand "+Graphity_Size_Rand, Cols[2], Regs[3]);
  text("/Size_Sin "+Graphity_Size_Sin, Cols[2], Regs[4]);
  text("/Size_Sin_Rate "+nf(Graphity_Size_Sin_Rate, 1, 2), Cols[2], Regs[5]);
  text("/Rotation "+Graphity_Rotation, Cols[2], Regs[6]);
  text("/Rotation_ON "+Graphity_Rotation_On, Cols[2], Regs[7]);
  text("/Rotation_Vel "+nf(Graphity_Rotation_Vel, 1, 2), Cols[2], Regs[8]);
  text("/Spray "+Graphity_Spray, Cols[2], Regs[9]);
  text("/Spray_Amp "+int(Graphity_Spray_Amplitud), Cols[2], Regs[10]);

  //------------------------------------// TEXT  // 

  fill(255);
  textSize(9);
  text("/Size "+int(Text_Size), Cols[2], Regs[13]);
  text("/Size_Rand "+Text_Size_Rand, Cols[2], Regs[14]);
  text("/Size_Sin "+Text_Size_Sin, Cols[2], Regs[15]);
  text("/Size_Sin_Rate "+nf(Text_Size_Sin_Rate, 1, 2), Cols[2], Regs[16]);
  text("/Rotation "+Text_Rotation, Cols[2], Regs[17]);
  text("/Rotation_Vel "+nf(Text_Rotation_Vel, 1, 2), Cols[2], Regs[18]);
  text("/Rotation_Offset "+int(Text_Rotation_Offset), Cols[2], Regs[19]);
  text("/Spray "+Text_Spray, Cols[2], Regs[20]);
  text("/Spray_Amp "+int(Text_Spray_Amp), Cols[2], Regs[21]);

  //------------------------------------// PATTERN  //  

  fill(255);
  textSize(9);
  text("/SizeX "+int(Pattern_SizeX), Cols[3], Regs[1]);
  text("/SizeY "+int(Pattern_SizeY), Cols[3], Regs[2]);
  text("/StrokeW "+nf(Pattern_Stroke_Width, 1, 2), Cols[3], Regs[3]);
  text("/CountX "+Pattern_CountX, Cols[3], Regs[4]);
  text("/CountY "+Pattern_CountY, Cols[3], Regs[5]);
  text("/SpacingX "+nf(Pattern_Spacing_X, 1, 2), Cols[3], Regs[6]);
  text("/SpacingY "+nf(Pattern_Spacing_Y, 1, 2), Cols[3], Regs[7]);
  text("/Size_Rand "+Pattern_Size_Rand, Cols[3], Regs[8]);
  text("/Size_Sin "+Pattern_Size_Sin, Cols[3], Regs[9]);
  text("/Sin_Rate "+nf(Pattern_Size_Sin_Rate, 1, 2), Cols[3], Regs[10]);
  text("/Stroke_Rand "+Pattern_Stroke_Rand, Cols[3], Regs[11]);
  text("/Rotation "+Pattern_Rotation, Cols[3], Regs[12]);
  text("/Rotation_Vel "+nf(Pattern_Rotation_Vel, 1, 2), Cols[3], Regs[13]);
  text("/Rotation_Offset "+int(Pattern_Rotation_Offset), Cols[3], Regs[14]);
}


void oscEvent(OscMessage mensajeOSC) {

  if (oscIn) {

    //---------------------------------------------------------// GLOBAL //--------------------------------------------------------------------

    ////MODE
    if (mensajeOSC.addrPattern().equals("/Global/MODE"))
      MODE = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(DropdownList.class, "MODE") .setValue(MODE);
    cp5.get(DropdownList.class, "MODE") .setLabel(MODE_Titles[MODE]);
    ;

    ////---------------------------------------------------------// 0 - COLOR & GENERAL //--------------------------------------------------------------------


    ////---------------------------------------------------------// ERASE

    ////Erase_Size
    if (mensajeOSC.addrPattern().equals("/Global/Erase_Size"))
      Erase_Size = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Erase_Size") .setValue(Erase_Size);
    ;
    ////Erase_Mode
    if (mensajeOSC.addrPattern().equals("/Global/Erase_Mode"))
      Erase_Mode = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Erase_Mode") .setValue(Erase_Mode);
    ;


    ////---------------------------------------------------------// FILL

    //fillWheel
    if (mensajeOSC.addrPattern().equals("/Fill/R") || mensajeOSC.addrPattern().equals("/Fill/G") || mensajeOSC.addrPattern().equals("/Fill/B"))
      if (mensajeOSC.addrPattern().equals("/Fill/R")) {
        FR = mensajeOSC.get(0).floatValue();
      }
    if (mensajeOSC.addrPattern().equals("/Fill/G")) {
      FG = mensajeOSC.get(0).floatValue();
    }
    if (mensajeOSC.addrPattern().equals("/Fill/B")) {
      FB = mensajeOSC.get(0).floatValue();
    }
    cp5.get(ColorWheel.class, "fillWheel") .setRGB(color(FR, FG, FB));
    ;

    ////Fill_R_Rand
    if (mensajeOSC.addrPattern().equals("/Fill/R_Rand"))
      Fill_R_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Fill_R_Rand") .setValue(Fill_R_Rand);
    ;
    ////Fill_G_Rand
    if (mensajeOSC.addrPattern().equals("/Fill/G_Rand"))
      Fill_G_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Fill_G_Rand") .setValue(Fill_G_Rand);
    ;
    ////Fill_B_Rand
    if (mensajeOSC.addrPattern().equals("/Fill/B_Rand"))
      Fill_B_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Fill_B_Rand") .setValue(Fill_B_Rand);
    ;

    ////Fill_RGB_Sin
    if (mensajeOSC.addrPattern().equals("/Fill/RGB_Sin"))
      Fill_RGB_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Fill_RGB_Sin") .setValue(Fill_RGB_Sin);
    ;
    //Fill_RGB_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Fill/Sin_Rate"))
      Fill_RGB_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Fill_RGB_Sin_Rate") .setValue(Fill_RGB_Sin_Rate);
    ;
    ////Fill_Alpha
    if (mensajeOSC.addrPattern().equals("/Fill/Alpha"))
      Fill_Alpha = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Fill_Alpha") .setValue(Fill_Alpha);
    ;
    ////Fill_Alpha_Rand
    if (mensajeOSC.addrPattern().equals("/Fill/Alpha_Rand"))
      Fill_Alpha_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Fill_Alpha_Rand") .setValue(Fill_Alpha_Rand);
    ;

    ////---------------------------------------------------------// STROKE

    //strokeWheel
    if (mensajeOSC.addrPattern().equals("/Stroke/R") || mensajeOSC.addrPattern().equals("/Stroke/G") || mensajeOSC.addrPattern().equals("/Stroke/B"))
      if (mensajeOSC.addrPattern().equals("/Stroke/R")) {
        SR = mensajeOSC.get(0).floatValue();
      }
    if (mensajeOSC.addrPattern().equals("/Stroke/G")) {
      SG = mensajeOSC.get(0).floatValue();
    }
    if (mensajeOSC.addrPattern().equals("/Stroke/B")) {
      SB = mensajeOSC.get(0).floatValue();
    }
    cp5.get(ColorWheel.class, "strokeWheel") .setRGB(color(SR, SG, SB));
    ;

    ////Stroke_R_Rand
    if (mensajeOSC.addrPattern().equals("/Stroke/R_Rand"))
      Stroke_R_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Stroke_R_Rand") .setValue(Stroke_R_Rand);
    ;
    ////Stroke_G_Rand
    if (mensajeOSC.addrPattern().equals("/Stroke/G_Rand"))
      Stroke_G_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Stroke_G_Rand") .setValue(Stroke_G_Rand);
    ;
    ////Stroke_B_Rand
    if (mensajeOSC.addrPattern().equals("/Stroke/B_Rand"))
      Stroke_B_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Stroke_B_Rand") .setValue(Stroke_B_Rand);
    ; 

    ////Stroke_RGB_Sin
    if (mensajeOSC.addrPattern().equals("/Stroke/RGB_Sin"))
      Stroke_RGB_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Stroke_RGB_Sin") .setValue(Stroke_RGB_Sin);
    ;
    ////Stroke_RGB_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Stroke/RGB_Sin_Rate"))
      Stroke_RGB_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Stroke_RGB_Sin_Rate") .setValue(Stroke_RGB_Sin_Rate);
    ;
    ////Stroke_Alpha
    if (mensajeOSC.addrPattern().equals("/Stroke/Alpha"))
      Stroke_Alpha = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Stroke_Alpha") .setValue(Stroke_Alpha);
    ;
    ////Stroke_Alpha_Rand
    if (mensajeOSC.addrPattern().equals("/Stroke/Alpha_Rand"))
      Stroke_Alpha_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Stroke_Alpha_Rand") .setValue(Stroke_Alpha_Rand);
    ;


    ////---------------------------------------------------------// 1 - TRAZO //--------------------------------------------------------------------

    //// Trazo_Width
    if (mensajeOSC.addrPattern().equals("/Trazo/Width"))
      Trazo_Width = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Trazo_Width") .setValue(Trazo_Width);
    ;
    //// Trazo_Cap_Mode
    if (mensajeOSC.addrPattern().equals("/Trazo/Cap_Mode"))
      Trazo_Cap_Mode = int(mensajeOSC.get(0). floatValue()); 
    cp5.get(Toggle.class, "Trazo_Cap_Mode") .setValue(Trazo_Cap_Mode);
    ;
    //// Trazo_Rand
    if (mensajeOSC.addrPattern().equals("/Trazo/W_Rand"))
      Trazo_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Trazo_Rand") .setValue(Trazo_Rand);
    ;
    //// Trazo_Sin
    if (mensajeOSC.addrPattern().equals("/Trazo/W_Sin"))
      Trazo_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Trazo_Sin") .setValue(Trazo_Sin);
    ;
    //// Trazo_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Trazo/W_Sin_Rate"))
      Trazo_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Trazo_Sin_Rate") .setValue(Trazo_Sin_Rate);
    ;
    //// Trazo_FX
    if (mensajeOSC.addrPattern().equals("/Trazo/FX"))
      Trazo_FX = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Trazo_FX") .setValue(Trazo_FX);
    ;
    //// Trazo_FX_Mode
    if (mensajeOSC.addrPattern().equals("/Trazo/FX_Mode"))
      Trazo_FX_Mode = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Trazo_FX_Mode") .setValue(Trazo_FX_Mode);
    ;

    ////---------------------------------------------------------// 2 - SHAPE //--------------------------------------------------------------------

    ////shape
    if (mensajeOSC.addrPattern().equals("/Shape_Mode"))
      shape = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(DropdownList.class, "shape") .setValue(shape);
    cp5.get(DropdownList.class, "shape") .setLabel(Shape_Titles[shape]);
    ;

    ////Shape_Size
    if (mensajeOSC.addrPattern().equals("/Shape/Size"))
      Shape_Size = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Shape_Size") .setValue(Shape_Size);
    ;
    ////Shape_Size_Rand
    if (mensajeOSC.addrPattern().equals("/Shape/Size_Rand"))
      Shape_Size_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Shape_Size_Rand") .setValue(Shape_Size_Rand);
    ;
    ////Shape_Stroke_Width
    if (mensajeOSC.addrPattern().equals("/Shape/Stroke_Width"))
      Shape_Stroke_Width = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Shape_Stroke_Width") .setValue(Shape_Stroke_Width);
    ;
    ////Shape_Size_Sin
    if (mensajeOSC.addrPattern().equals("/Shape/Size_Sin"))
      Shape_Size_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Shape_Size_Sin") .setValue(Shape_Size_Sin);
    ;
    ////Shape_Size_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Shape/Size_Sin_Rate"))
      Shape_Size_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Shape_Size_Sin_Rate") .setValue(Shape_Size_Sin_Rate);
    ;
    ////Shape_Stroke_Rand
    if (mensajeOSC.addrPattern().equals("/Shape/Stroke_Rand"))
      Shape_Stroke_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Shape_Stroke_Rand") .setValue(Shape_Stroke_Rand);
    ;
    ////Shape_Rotation
    if (mensajeOSC.addrPattern().equals("/Shape/Rotation"))
      Shape_Rotation = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Shape_Rotation") .setValue(Shape_Rotation);
    ;
    ////Shape_Rotation_Vel
    if (mensajeOSC.addrPattern().equals("/Shape/Rotation_Vel"))
      Shape_Rotation_Vel = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Shape_Rotation_Vel") .setValue(Shape_Rotation_Vel);
    ;
    ////Shape_Rotation_Offset
    if (mensajeOSC.addrPattern().equals("/Shape/Rotation_Offset"))
      Shape_Rotation_Offset = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Shape_Rotation_Offset") .setValue(Shape_Rotation_Offset);
    ;
    ////Shape_Spray
    if (mensajeOSC.addrPattern().equals("/Shape/Spray"))
      Shape_Spray = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Shape_Spray") .setValue(Shape_Spray);
    ;
    ////Shape_Spray_Amplitud
    if (mensajeOSC.addrPattern().equals("/Shape/Spray_Amp"))
      Shape_Spray_Amplitud = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Shape_Spray_Amplitud") .setValue(Shape_Spray_Amplitud);
    ;
    
     ////---------------------------------------------------------// 3 - GRAPHITY //--------------------------------------------------------------------

    ////shape
    if (mensajeOSC.addrPattern().equals("/Graphity_Mode"))
      brush = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(DropdownList.class, "brush") .setValue(brush);
    //cp5.get(DropdownList.class, "brush") .setLabel(Brush_Titles[brush]);
    ;

    ////Graphity_Size
    if (mensajeOSC.addrPattern().equals("/Graphity/Size"))
      Graphity_Size = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Graphity_Size") .setValue(Graphity_Size);
    ;
    ////Graphity_Size_Rand
    if (mensajeOSC.addrPattern().equals("/Graphity/Size_Rand"))
      Graphity_Size_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Graphity_Size_Rand") .setValue(Graphity_Size_Rand);
    ;
    ////Graphity_Size_Sin
    if (mensajeOSC.addrPattern().equals("/Graphity/Size_Sin"))
      Graphity_Size_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Graphity_Size_Sin") .setValue(Graphity_Size_Sin);
    ;
    ////Graphity_Size_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Graphity/Size_Sin_Rate"))
      Graphity_Size_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Graphity_Size_Sin_Rate") .setValue(Graphity_Size_Sin_Rate);
    ;
    ////Graphity_Rotation
    if (mensajeOSC.addrPattern().equals("/Graphity/Rotation"))
      Graphity_Rotation = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Slider.class, "Graphity_Rotation") .setValue(Graphity_Rotation);
    ;
    ////Graphity_Rotation_Vel
    if (mensajeOSC.addrPattern().equals("/Graphity/Rotation_Vel"))
      Graphity_Rotation_Vel = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Graphity_Rotation_Vel") .setValue(Graphity_Rotation_Vel);
    ;
    ////Graphity_Rotation_ON
    if (mensajeOSC.addrPattern().equals("/Graphity/Rotation_ON"))
      Graphity_Rotation_On = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Graphity_Rotation_On") .setValue(Graphity_Rotation_On);
    ;
    ////Graphity_Spray
    if (mensajeOSC.addrPattern().equals("/Graphity/Spray"))
      Graphity_Spray = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Graphity_Spray") .setValue(Graphity_Spray);
    ;
    ////Graphity_Spray_Amplitud
    if (mensajeOSC.addrPattern().equals("/Graphity/Spray_Amp"))
      Graphity_Spray_Amplitud = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Graphity_Spray_Amplitud") .setValue(Graphity_Spray_Amplitud);
    ;

    ////---------------------------------------------------------// 3 - TEXT //--------------------------------------------------------------------

    ////Text_Size
    if (mensajeOSC.addrPattern().equals("/Text/Size"))
      Text_Size = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Text_Size") .setValue(Text_Size);
    ;
    ////Text_Size_Rand
    if (mensajeOSC.addrPattern().equals("/Text/Size_Rand"))
      Text_Size_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Text_Size_Rand") .setValue(Text_Size_Rand);
    ;
    ////Text_Size_Sin
    if (mensajeOSC.addrPattern().equals("/Text/Size_Sin"))
      Text_Size_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Text_Size_Sin") .setValue(Text_Size_Sin);
    ;
    ////Text_Size_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Text/Size_Sin_Rate"))
      Text_Size_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Text_Size_Sin_Rate") .setValue(Text_Size_Sin_Rate);
    ;
    ////Text_Rotation
    if (mensajeOSC.addrPattern().equals("/Text/Rotation"))
      Text_Rotation = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Text_Rotation") .setValue(Text_Rotation);
    ;
    ////Text_Rotation_Vel
    if (mensajeOSC.addrPattern().equals("/Text/Rotation_Vel"))
      Text_Rotation_Vel = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Text_Rotation_Vel") .setValue(Text_Rotation_Vel);
    ;
    ////Text_Rotation_Offset
    if (mensajeOSC.addrPattern().equals("/Text/Rotation_Offset"))
      Text_Rotation_Offset = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Text_Rotation_Offset") .setValue(Text_Rotation_Offset);
    ;
    ////Text_Spray
    if (mensajeOSC.addrPattern().equals("/Text/Spray"))
      Text_Spray = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Text_Spray") .setValue(Text_Spray);
    ;
    ////Text_Spray_Amp
    if (mensajeOSC.addrPattern().equals("/Text/Spray_Amp"))
      Text_Spray_Amp = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Text_Spray_Amp") .setValue(Text_Spray_Amp);
    ;

    ////---------------------------------------------------------// 4 - PATTERN //--------------------------------------------------------------------

    ////Pattern_SizeX
    if (mensajeOSC.addrPattern().equals("/Pattern/SizeX"))
      Pattern_SizeX = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_SizeX") .setValue(Pattern_SizeX);
    ;
    ////Pattern_SizeY
    if (mensajeOSC.addrPattern().equals("/Pattern/SizeY"))
      Pattern_SizeY = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_SizeY") .setValue(Pattern_SizeY);
    ;
    ////Pattern_Stroke_Width
    if (mensajeOSC.addrPattern().equals("/Pattern/StrokeW"))
      Pattern_Stroke_Width = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_Stroke_Width") .setValue(Pattern_Stroke_Width);
    ;
    ////Pattern_CountX
    if (mensajeOSC.addrPattern().equals("/Pattern/CountX"))
      Pattern_CountX = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Slider.class, "Pattern_CountX") .setValue(Pattern_CountX);
    ;
    ////Pattern_CountY
    if (mensajeOSC.addrPattern().equals("/Pattern/CountY"))
      Pattern_CountY = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Slider.class, "Pattern_CountY") .setValue(Pattern_CountY);
    ;
    ////Pattern_Spacing_X
    if (mensajeOSC.addrPattern().equals("/Pattern/SpacingX"))
      Pattern_Spacing_X = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_Spacing_X") .setValue(Pattern_Spacing_X);
    ;
    ////Pattern_Spacing_Y
    if (mensajeOSC.addrPattern().equals("/Pattern/SpacingY"))
      Pattern_Spacing_Y = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_Spacing_Y") .setValue(Pattern_Spacing_Y);
    ;
    ////Pattern_Size_Rand
    if (mensajeOSC.addrPattern().equals("/Pattern/Size_Rand"))
      Pattern_Size_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Pattern_Size_Rand") .setValue(Pattern_Size_Rand);
    ;
    ////Pattern_Size_Sin
    if (mensajeOSC.addrPattern().equals("/Pattern/Size_Sin"))
      Pattern_Size_Sin = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Pattern_Size_Sin") .setValue(Pattern_Size_Sin);
    ;
    ////Pattern_Size_Sin_Rate
    if (mensajeOSC.addrPattern().equals("/Pattern/Sin_Rate"))
      Pattern_Size_Sin_Rate = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_Size_Sin_Rate") .setValue(Pattern_Size_Sin_Rate);
    ;
    ////Pattern_Stroke_Rand
    if (mensajeOSC.addrPattern().equals("/Pattern/Stroke_Rand"))
      Pattern_Stroke_Rand = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Pattern_Stroke_Rand") .setValue(Pattern_Stroke_Rand);
    ;
    ////Pattern_Rotation
    if (mensajeOSC.addrPattern().equals("/Pattern/Rotation"))
      Pattern_Rotation = int(mensajeOSC.get(0).floatValue()); 
    cp5.get(Toggle.class, "Pattern_Rotation") .setValue(Pattern_Rotation);
    ;
    ////Pattern_Rotation_Vel
    if (mensajeOSC.addrPattern().equals("/Pattern/Rotation_Vel"))
      Pattern_Rotation_Vel = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_Rotation_Vel") .setValue(Pattern_Rotation_Vel);
    ;
    ////Pattern_Rotation_Offset
    if (mensajeOSC.addrPattern().equals("/Pattern/Rotation_Offset"))
      Pattern_Rotation_Offset = mensajeOSC.get(0).floatValue(); 
    cp5.get(Slider.class, "Pattern_Rotation_Offset") .setValue(Pattern_Rotation_Offset);
    ;



    ////---------------------------------------------------------// PRESETS //--------------------------------------------------------------------


    // SAVE PRESETS 

    if (mensajeOSC.addrPattern().equals("/Global/Preset_1_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_1");
        println("Preset 1 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_2_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_2");
        println("Preset 2 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_3_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_3");
        println("Preset 3 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_4_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_4");
        println("Preset 4 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_5_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_5");
        println("Preset 5 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_6_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_6");
        println("Preset 6 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_7_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_7");
        println("Preset 7 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_8_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_8");
        println("Preset 8 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_9_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_9");
        println("Preset 9 Saved");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_10_Save"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        saveColorWheels();
        cp5.saveProperties("presets/Preset_10");
        println("Preset 10 Saved");
      }
    ;

    // LOAD PRESETS 

    if (mensajeOSC.addrPattern().equals("/Global/Preset_1_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_1"));
        updateColorWheels(); 
        println("Preset 1 Loaded");
      }
    ;

    if (mensajeOSC.addrPattern().equals("/Global/Preset_2_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_2"));
        updateColorWheels(); 
        println("Preset 2 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_3_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_3"));
        updateColorWheels(); 
        println("Preset 3 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_4_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_4"));
        updateColorWheels(); 
        println("Preset 4 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_5_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_5"));
        updateColorWheels(); 
        println("Preset 5 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_6_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_6"));
        updateColorWheels(); 
        println("Preset 6 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_7_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_7"));
        updateColorWheels(); 
        println("Preset 7 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_8_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_8"));
        updateColorWheels(); 
        println("Preset 8 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_9_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_9"));
        updateColorWheels(); 
        println("Preset 9 Loaded");
      }
    ;
    if (mensajeOSC.addrPattern().equals("/Global/Preset_10_Load"))
      if (mensajeOSC.get(0).floatValue() == 1) {
        cp5.loadProperties(("presets/Preset_10"));
        updateColorWheels(); 
        println("Preset 10 Loaded");
      }
    ;
  }
}