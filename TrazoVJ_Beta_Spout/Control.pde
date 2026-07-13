int menuX = W;
int SubmenuX = 10;
int Col2 = 90;
int Cabezal = 20;
int accordionMarca = 0;
int cantidadRenglones =20;
int[] renglones = new int[cantidadRenglones];

color BackgroundColor = color(20);
color ColorActive = color(0, 250, 250);
color ColorForeground = color(80, 150, 150);
color ColorBackground = color(70);

color audioBackgroundColor = color(20);
color audioColorActive = color(250, 0, 250);
color audioColorForeground = color(150, 80, 150);
color audioColorBackground = color(70);

color SavePColorActive = color(250, 0, 0);
color SavePColorForeground = color(150, 80, 80);
color SavePColorBackground = color(70);

color LoadPColorActive = color(0, 250, 0);
color LoadPColorForeground = color(80, 150, 80);
color LoadPColorBackground = color(70);

void controls() {

  for (int i=0; i<cantidadRenglones; i++) {
    renglones[i]=10+(15*i);
  }

  cp5 = new ControlP5(this); 

  //----------------------------------------------// GRUPO 1  -  COLOR // --------------------------------------------------------------

  Group g1 = cp5.addGroup("Color & GENERAL") 

    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(280)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;

  // BORRAR // ----------------------------------------------------------------------------------------------------    

  cp5.addBang("borrar")
    .setLabel("")
    .setValue(0)
    .setPosition(SubmenuX+165, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(15, 15)
    .moveTo(g1)
    ;
  cp5.addTextlabel("borrar_label")
    .setText("CLEAR")
    .setPosition(SubmenuX+125, renglones[0]+3)
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;   

  // FILL PROPIEDADES // ----------------------------------------------------------------------------------------------------

  cp5.addTextlabel("Fill_label")
    .setText("FILL")
    .setPosition(SubmenuX+Col2, renglones[2])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addColorWheel("fillWheel", 0, 0, 80)
    .setPosition(SubmenuX, renglones[2])
    .setRGB(color(0, 180, 255))
    .setLabel("")
    .moveTo(g1)
    ;

  //cp5.addToggle("Fill_RGB_Rand")
  //  .setLabel("")
  //  .setPosition(SubmenuX+Col2, renglones[3])
  //  .setColorActive(ColorActive)
  //  .setColorForeground(ColorForeground)
  //  .setColorBackground(ColorBackground)
  //  .setSize(10, 10)
  //  .setState(false)
  //  .moveTo(g1)
  //  ;
  //cp5.addTextlabel("rand_color_label")
  //  .setText("RAND")
  //  .setPosition(SubmenuX+Col2+10, renglones[3])
  //  .setColorValue(0xffffffff)
  //  .moveTo(g1)
  //  ;

  cp5.addToggle("Fill_R_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;  
  cp5.addTextlabel("Fill_R_Rand_label")
    .setText("R")
    .setPosition(SubmenuX+Col2+10, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addToggle("Fill_G_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2+25, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ; 
  cp5.addTextlabel("Fill_G_Rand_label")
    .setText("G")
    .setPosition(SubmenuX+Col2+35, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addToggle("Fill_B_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2+50, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ; 
  cp5.addTextlabel("Fill_B_Rand_label")
    .setText("B RAN")
    .setPosition(SubmenuX+Col2+60, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addToggle("Fill_RGB_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;
  cp5.addTextlabel("sin_color_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[4])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ; 

  cp5.addSlider("Fill_RGB_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2+35, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize( 30, 10)
    .setRange(0, 1)
    .setValue(0.1)
    .moveTo(g1)
    ;   

  cp5.addSlider("Fill_Alpha")
    .setLabel("A")
    .setPosition(SubmenuX+Col2+Col1, renglones[5])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 255)
    .setValue(255)
    .moveTo(g1)
    ;
  cp5.addToggle("Fill_Alpha_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[5])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;  

  cp5.addToggle("Fill_Alpha_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;
  cp5.addTextlabel("rand_ALPHA_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[6])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;  

  // STROKE PROPIEDADES // ----------------------------------------------------------------------------------------------------

  cp5.addTextlabel("Stroke_label")
    .setText("STROKE")
    .setPosition(SubmenuX+Col2, renglones[8])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addColorWheel("strokeWheel", 0, 0, 80)
    .setLabel("")
    .setPosition(SubmenuX, renglones[8])
    .setRGB(color(255, 0, 160))
    .setLabel("")  
    .moveTo(g1)
    ;

  //cp5.addToggle("Stroke_RGB_Rand")
  //  .setLabel("")
  //  .setPosition(SubmenuX+Col2, renglones[10])
  //  .setColorActive(ColorActive)
  //  .setColorForeground(ColorForeground)
  //  .setColorBackground(ColorBackground)
  //  .setSize(10, 10)
  //  .setState(false)
  //  .moveTo(g1)
  //  ;
  //cp5.addTextlabel("Stroke_RGB_Rand_label")
  //  .setText("RAND")
  //  .setPosition(SubmenuX+Col2+10, renglones[10])
  //  .setColorValue(0xffffffff)
  //  .moveTo(g1)
  //  ; 
  
  cp5.addToggle("Stroke_R_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[9])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;  
  cp5.addTextlabel("Stroke_R_Rand_label")
    .setText("R")
    .setPosition(SubmenuX+Col2+10, renglones[9])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addToggle("Stroke_G_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2+25, renglones[9])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ; 
  cp5.addTextlabel("Stroke_G_Rand_label")
    .setText("G")
    .setPosition(SubmenuX+Col2+35, renglones[9])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addToggle("Stroke_B_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2+50, renglones[9])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ; 
  cp5.addTextlabel("Stroke_B_Rand_label")
    .setText("B RAN")
    .setPosition(SubmenuX+Col2+60, renglones[9])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;

  cp5.addToggle("Stroke_RGB_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[10])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;
  cp5.addTextlabel("Stroke_RGB_Sin_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[10])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;   

  cp5.addSlider("Stroke_RGB_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2+35, renglones[10])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize( 30, 10)
    .setRange(0, 1)
    .setValue(0.1)
    .moveTo(g1)
    ;  

  cp5.addSlider("Stroke_Alpha")
    .setLabel("A")
    .setPosition(SubmenuX+Col2+Col1, renglones[11])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 255)
    .setValue(255)
    .moveTo(g1)
    ;    
  cp5.addToggle("Stroke_Alpha_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[11])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ; 

  cp5.addToggle("Stroke_Alpha_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[12])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g1)
    ;
  cp5.addTextlabel("Stroke_Alpha_Rand_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[12])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;  

  // CORRECCION COLOR WHEEL // 

  cp5.addTextfield("Fill_R_Buffer")  .setPosition(20, 20) .setSize(50, 15) .setVisible(false);
  cp5.addTextfield("Fill_G_Buffer")  .setPosition(20, 50) .setSize(50, 15) .setVisible(false);
  cp5.addTextfield("Fill_B_Buffer")  .setPosition(20, 80) .setSize(50, 15) .setVisible(false);
  cp5.addTextfield("Stroke_R_Buffer")  .setPosition(100, 20) .setSize(50, 15) .setVisible(false);
  cp5.addTextfield("Stroke_G_Buffer")  .setPosition(100, 50) .setSize(50, 15) .setVisible(false);
  cp5.addTextfield("Stroke_B_Buffer")  .setPosition(100, 80) .setSize(50, 15) .setVisible(false);

  // ERASE // ----------------------------------------------------------------------------------------------------

  cp5.addSlider("Erase_Size")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[16])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize( 50, 10)
    .setRange(0, 500)
    .setValue(100)
    .moveTo(g1)
    ; 
  cp5.addTextlabel("Erase_Size_label")
    .setText("SIZE")
    .setPosition(SubmenuX+Col2+50, renglones[16])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;  

  cp5.addToggle("Erase_Mode")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[15])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;
  cp5.addTextlabel("Erase_Mode_label")
    .setText("ERASE MODE")
    .setPosition(SubmenuX+Col2+10, renglones[15])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;  

  // BACKGROUND // ----------------------------------------------------------------------------------------------------

  cp5.addSlider("BackgroundGost")
    .setLabel("")
    .setPosition(SubmenuX, renglones[16])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize( 50, 10)
    .setRange(0, 30)
    .setValue(0)
    .moveTo(g1)
    ; 
  cp5.addTextlabel("BackgroundGost_label")
    .setText("TRAILS")
    .setPosition(SubmenuX+50, renglones[16])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ;  
  cp5.addToggle("Gost_Mode")
    .setLabel("")
    .setPosition(SubmenuX, renglones[15])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g1)
    ;
  cp5.addTextlabel("Gost_Mode_label")
    .setText("BACK MODE")
    .setPosition(SubmenuX+10, renglones[15])
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ; 

  // MODE // ----------------------------------------------------------------------------------------------------

  modeselect = cp5.addDropdownList("MODE")
    .setLabel("Trazo")
    .setPosition(45, renglones[0])
    .setSize(45, 100) 
    .moveTo(g1)
    ;
  cp5.addTextlabel("MODE_label")
    .setText("MODE")
    .setPosition(7, renglones[0]+3)
    .setColorValue(0xffffffff)
    .moveTo(g1)
    ; 

  //----------------------------------------------// GRUPO 2  -  TRAZO // ----------------------------------------------------------------------------------------------------  

  Group g2 = cp5.addGroup("Trazo")                  
    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(80)
    .setSize(200, 80)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;

  cp5.addSlider("Trazo_Width")
    .setLabel("WIDTH")
    .setPosition(SubmenuX+Col1, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(0, 300)
    .setValue(10)
    .moveTo(g2)
    ;
  cp5.addToggle("Trazo_Width_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[0])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g2)
    ;  

  cp5.addToggle("Trazo_Cap_Mode")
    .setLabel("")
    .setPosition(SubmenuX, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g2)
    ;   
  cp5.addTextlabel("Trazo_Cap_Mode_label")
    .setText("CAP MODE")
    .setPosition(SubmenuX+10, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g2)
    ; 

  cp5.addToggle("Trazo_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g2)
    ;
  cp5.addTextlabel("Trazo_Rand_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g2)
    ; 

  cp5.addToggle("Trazo_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g2)
    ; 
  cp5.addTextlabel("Trazo_Sin_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g2)
    ; 

  cp5.addSlider("Trazo_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2, renglones[2])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize( 40, 10)
    .setRange(0, 1)
    .setValue(0.2)
    .moveTo(g2)
    ;

  cp5.addSlider("Trazo_FX")
    .setLabel("AMPL")
    .setPosition(SubmenuX+Col1, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 150)
    .setValue(0)
    .moveTo(g2)
    ;
  cp5.addToggle("Trazo_FX_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[4])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g2)
    ; 

  cp5.addToggle("Trazo_FX_Mode")
    .setLabel("")
    .setPosition(SubmenuX, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g2)
    ;
  cp5.addTextlabel("Trazo_FX_Mode_label")
    .setText("FX MODE")
    .setPosition(SubmenuX+10, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g2)
    ; 


  //----------------------------------------------// GRUPO 3  -  SHAPE // ----------------------------------------------------------------------------------------------------

  Group g3 = cp5.addGroup("Shape")                         
    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(180)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;

  cp5.addSlider("Shape_Size")
    .setLabel("Size")
    .setPosition(SubmenuX+Col1, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 300)
    .setValue(50)
    .moveTo(g3)
    ;
  cp5.addToggle("Shape_Size_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[0])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ; 

  cp5.addToggle("Shape_Size_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ;
  cp5.addTextlabel("Shape_Size_Rand_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g3)
    ; 

  cp5.addSlider("Shape_Stroke_Width")
    .setLabel("Stroke")
    .setPosition(SubmenuX+Col1, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 100)
    .setValue(5)
    .moveTo(g3)
    ;
  cp5.addToggle("Shape_Stroke_Width_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[3])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ; 


  cp5.addToggle("Shape_Size_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ;
  cp5.addTextlabel("Shape_Size_Sin_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g3)
    ; 
  cp5.addSlider("Shape_Size_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2+35, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(30, 10)
    .setRange(0, 2)
    .setValue(0.2)
    .moveTo(g3)
    ;

  cp5.addToggle("Shape_Stroke_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ;
  cp5.addTextlabel("Shape_Stroke_Rand_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g3)
    ; 

  cp5.addToggle("Shape_Rotation")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[5])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ;
  cp5.addTextlabel("Shape_Rotation_label")
    .setText("ROTATE")
    .setPosition(SubmenuX+Col2+10, renglones[5])
    .setColorValue(0xffffffff)
    .moveTo(g3)
    ; 

  cp5.addSlider("Shape_Rotation_Vel")
    .setLabel("Velocity")
    .setPosition(SubmenuX+Col2+Col1, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(-.5, .5)
    .setValue(0.2)
    .moveTo(g3)
    ;
  cp5.addToggle("Shape_Rotation_Vel_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[6])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ; 

  cp5.addSlider("Shape_Rotation_Offset")
    .setLabel("Offset")
    .setPosition(SubmenuX+Col2+Col1, renglones[7])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 500)
    .setValue(30)
    .moveTo(g3)
    ;
  cp5.addToggle("Shape_Rotation_Offset_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[7])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ; 

  cp5.addToggle("Shape_Spray")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[9])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ;
  cp5.addTextlabel("Shape_Spray_label")
    .setText("SPRAY")
    .setPosition(SubmenuX+Col2+10, renglones[9])
    .setColorValue(0xffffffff)
    .moveTo(g3)
    ; 

  cp5.addSlider("Shape_Spray_Amplitud")
    .setLabel("Amplitud")
    .setPosition(SubmenuX+Col2+Col1, renglones[10])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(1, 500)
    .setValue(1)
    .moveTo(g3)
    ;
  cp5.addToggle("Shape_Spray_Amplitud_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[10])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g3)
    ; 

  shapeselect = cp5.addDropdownList("shape")
    .setLabel("RECTANGLE")
    .setPosition(SubmenuX, renglones[5])
    .setSize(50, 200)  
    .moveTo(g3)
    ;

  customize1(shapeselect);
  shapeselect.close();

  //----------------------------------------------// GRUPO 4  -  GRAPHITY // ----------------------------------------------------------------------------------------------------

  Group g8 = cp5.addGroup("Graphity")                         
    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(140)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;

  cp5.addSlider("Graphity_Size")
    .setLabel("Size")
    .setPosition(SubmenuX+Col1, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 300)
    .setValue(50)
    .moveTo(g8)
    ;
  cp5.addToggle("Graphity_Size_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[0])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g8)
    ; 

  cp5.addToggle("Graphity_Size_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g8)
    ;
  cp5.addTextlabel("Graphity_Size_Rand_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g8)
    ; 

  cp5.addToggle("Graphity_Size_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g8)
    ;
  cp5.addTextlabel("Graphity_Size_Sin_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g8)
    ; 
  cp5.addSlider("Graphity_Size_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2+35, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(30, 10)
    .setRange(0, 2)
    .setValue(0.2)
    .moveTo(g8)
    ;


  cp5.addSlider("Graphity_Rotation")
    .setLabel("ROTATION")
    .setPosition(SubmenuX+Col2, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 360)
    .setValue(0)
    .moveTo(g8)
    ;
  cp5.addToggle("Graphity_Rotation_On")
    .setLabel("")
    .setPosition(SubmenuX+Col2-11, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g8)
    ;
  cp5.addSlider("Graphity_Rotation_Vel")
    .setLabel("Velocity")
    .setPosition(SubmenuX+Col2, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(-0.4, 0.4)
    .setValue(0.1)
    .moveTo(g8)
    ;

  cp5.addToggle("Graphity_Spray")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g8)
    ;
  cp5.addTextlabel("Graphity_Spray_label")
    .setText("SPRAY")
    .setPosition(SubmenuX+Col2+10, renglones[6])
    .setColorValue(0xffffffff)
    .moveTo(g8)
    ; 

  cp5.addSlider("Graphity_Spray_Amplitud")
    .setLabel("Amplitud")
    .setPosition(SubmenuX+Col2+Col1, renglones[7])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(1, 500)
    .setValue(1)
    .moveTo(g8)
    ;
  cp5.addToggle("Graphity_Spray_Amplitud_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[7])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g8)
    ; 

  graphityselect = cp5.addDropdownList("brush")
    .setLabel("brush1")
    .setPosition(SubmenuX, renglones[1])
    .setSize(50, 200)  
    .moveTo(g8)
    ;

  customizeGraphity(graphityselect);
  graphityselect.close();

  //----------------------------------------------// GRUPO  4  -  TEXTO // ----------------------------------------------------------------------------------------------------

  Group g4 = cp5.addGroup("Text")                        
    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(120)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;

  cp5.addSlider("Text_Size")
    .setLabel("SIZE")
    .setPosition(SubmenuX+Col1, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 300)
    .setValue(60)
    .moveTo(g4)
    ;
  cp5.addToggle("Text_Size_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[0])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ; 

  cp5.addToggle("Text_Size_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ;
  cp5.addTextlabel("Text_Size_Rand_label")
    .setText("RAN")
    .setPosition(SubmenuX+Col2+10, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g4)
    ; 

  cp5.addToggle("Text_Size_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ;
  cp5.addTextlabel("Texto_Sin_Size_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g4)
    ; 

  cp5.addSlider("Text_Size_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2+35, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(30, 10)
    .setRange(0, 1)
    .setValue(0.2)
    .moveTo(g4)
    ;

  cp5.addToggle("Text_Rotation")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[2])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ;
  cp5.addTextlabel("Text_Rotationn_label")
    .setText("ROTATE")
    .setPosition(SubmenuX+Col2+10, renglones[2])
    .setColorValue(0xffffffff)
    .moveTo(g4)
    ; 
  cp5.addSlider("Text_Rotation_Vel")
    .setLabel("Velocity")
    .setPosition(SubmenuX+Col2+Col1, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(-.5, .5)
    .setValue(0.2)
    .moveTo(g4)
    ;
  cp5.addToggle("Text_Rotation_Vel_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[3])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ;   

  cp5.addSlider("Text_Rotation_Offset")
    .setLabel("Offset")
    .setPosition(SubmenuX+Col2+Col1, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 500)
    .setValue(30)
    .moveTo(g4)
    ;
  cp5.addToggle("Text_Rotation_Offset_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[4])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ; 

  cp5.addToggle("Text_Spray")
    .setLabel("")
    .setPosition(SubmenuX, renglones[2])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ;
  cp5.addTextlabel("Text_Spray_label")
    .setText("SPRAY")
    .setPosition(SubmenuX+10, renglones[2])
    .setColorValue(0xffffffff)
    .moveTo(g4)
    ; 

  cp5.addSlider("Text_Spray_Amp")
    .setLabel("Ampl")
    .setPosition(SubmenuX+Col1, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 500)
    .setValue(50)
    .moveTo(g4)
    ;
  cp5.addToggle("Text_Spray_Amp_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[3])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g4)
    ; 

  cp5.addTextfield("TEXTO_IN")
    .setLabel("")
    .setPosition(SubmenuX+40, renglones[6]-3)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setValue("fUck tHE SyStEm")
    .setSize(120, 15)
    .setFocus(true)
    .moveTo(g4)
    ;   
    cp5.addTextlabel("TEXTO_IN_label")
    .setText("TEXT")
    .setPosition(SubmenuX, renglones[6])
    .setColorValue(0xffffffff)
    .moveTo(g4)
    ; 

  //----------------------------------------------// GRUPO 5 - PATTERN // ----------------------------------------------------------------------------------------------------

  Group g5 = cp5.addGroup("Pattern")                        
    .setBackgroundColor(BackgroundColor)  
    .setBackgroundHeight(140)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;

  cp5.addSlider("Pattern_SizeX")
    .setLabel("W")
    .setPosition(SubmenuX+Col1, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(0, 150)
    .setValue(10)
    .moveTo(g5)
    ;
  cp5.addToggle("Pattern_SizeX_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[0])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;

  cp5.addSlider("Pattern_SizeY")
    .setLabel("H")
    .setPosition(SubmenuX+Col1, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(0, 150)
    .setValue(10)
    .moveTo(g5)
    ;
  cp5.addToggle("Pattern_SizeY_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[1])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;


  cp5.addSlider("Pattern_Stroke_Width")
    .setLabel("STRK")
    .setPosition(SubmenuX+Col1, renglones[2])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(0, 10)
    .setValue(1)
    .moveTo(g5)
    ;
  cp5.addToggle("Pattern_Stroke_Width_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[2])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;

  cp5.addSlider("Pattern_CountX")
    .setLabel("X Nº")
    .setPosition(SubmenuX, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(1, 30)
    .setValue(5)
    .moveTo(g5)
    ;
  cp5.addSlider("Pattern_CountY")
    .setLabel("Y Nº")
    .setPosition(SubmenuX, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(1, 30)
    .setValue(5)
    .moveTo(g5)
    ;

  cp5.addSlider("Pattern_Spacing_X")
    .setLabel("SPC W")
    .setPosition(SubmenuX+Col1, renglones[5])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(0, 150)
    .setValue(20)
    .moveTo(g5)
    ;
  cp5.addToggle("Pattern_Spacing_X_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[5])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;

  cp5.addSlider("Pattern_Spacing_Y")
    .setLabel("SPC H")
    .setPosition(SubmenuX+Col1, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(50, 10)
    .setRange(0, 150)
    .setValue(20)
    .moveTo(g5)
    ;  
  cp5.addToggle("Pattern_Spacing_Y_Audio")
    .setLabel("")
    .setPosition(SubmenuX, renglones[6])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;


  cp5.addToggle("Pattern_Size_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;
  cp5.addTextlabel("Pattern_Size_Rand_label")
    .setText("RAND")
    .setPosition(SubmenuX+Col2+10, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g5)
    ; 

  cp5.addToggle("Pattern_Size_Sin")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;
  cp5.addTextlabel("Pattern_Size_Sin_label")
    .setText("SIN")
    .setPosition(SubmenuX+Col2+10, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g5)
    ; 

  cp5.addSlider("Pattern_Size_Sin_Rate")
    .setLabel("RATE")
    .setPosition(SubmenuX+Col2+35, renglones[1])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(30, 10)
    .setRange(0, 1)
    .setValue(0.2)
    .moveTo(g5)
    ;

  cp5.addToggle("Pattern_Stroke_Rand")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[2])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;
  cp5.addTextlabel("Pattern_Stroke_Rand_label")
    .setText("RAND")
    .setPosition(SubmenuX+Col2+10, renglones[2])
    .setColorValue(0xffffffff)
    .moveTo(g5)
    ; 



  cp5.addToggle("Pattern_Rotation")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[4])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;
  cp5.addTextlabel("Pattern_Rotationn_label")
    .setText("ROTATE")
    .setPosition(SubmenuX+Col2+10, renglones[4])
    .setColorValue(0xffffffff)
    .moveTo(g5)
    ; 

  cp5.addSlider("Pattern_Rotation_Vel")
    .setLabel("Velocity")
    .setPosition(SubmenuX+Col2+Col1, renglones[5])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(-.5, .5)
    .setValue(0.2)
    .moveTo(g5)
    ;
  cp5.addToggle("Pattern_Rotation_Vel_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[5])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;

  cp5.addSlider("Pattern_Rotation_Offset")
    .setLabel("Offset")
    .setPosition(SubmenuX+Col2+Col1, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(40, 10)
    .setRange(0, 500)
    .setValue(30)
    .moveTo(g5)
    ;
  cp5.addToggle("Pattern_Rotation_Offset_Audio")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[6])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;
    
   cp5.addToggle("Pattern_Mode")
    .setLabel("")
    .setPosition(SubmenuX, renglones[7])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g5)
    ;
  cp5.addTextlabel("Pattern_Mode_label")
    .setText("MODE")
    .setPosition(SubmenuX+10, renglones[7])
    .setColorValue(0xffffffff)
    .moveTo(g5)
    ; 


  //----------------------------------------------// GRUPO 6  -  MODE & SETUP// ----------------------------------------------------------------------------------------------------

  Group g6 = cp5.addGroup("MODE & SETUP")                 
    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(200)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;    

  // WORKSPACE // --------------------------------------------------      

  cp5.addTextfield("W")
    .setLabel("WIDTH")
    .setPosition(SubmenuX, renglones[0])
    .setAutoClear(false)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setValue(str(W))
    .setSize(30, 10)
    .setFocus(true)
    .moveTo(g6)
    ;

  cp5.addTextfield("H")
    .setLabel("HEIGHT")
    .setPosition(SubmenuX+50, renglones[0])
    .setAutoClear(false)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setValue(str(H))
    .setSize(30, 10)
    .setFocus(true)
    .moveTo(g6)
    ;

  cp5.addButton("workspaceSize")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[0])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("workspaceSize_label")
    .setText("SET SIZE")
    .setPosition(SubmenuX+Col2+15, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ; 
  cp5.addTextlabel("workspaceSize_Des_label")
    .setText("(min 400px)")
    .setPosition(SubmenuX+Col2+15, renglones[1])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ; 
  cp5.addToggle("gridON")
    .setLabel("")
    .setState(false)
    .setPosition(SubmenuX+Col2, renglones[2])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("gridON_label")
    .setText("GRID")
    .setPosition(SubmenuX+Col2+15, renglones[2])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ; 

  // SALVAR // --------------------------------------------------   

  cp5.addTextfield("imagen")
    .setLabel("")
    .setPosition(SubmenuX, renglones[3])
    .setAutoClear(false)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setValue("TS_Still_001")
    .setSize(80, 10)
    .setFocus(false)
    .moveTo(g6)
    ;

  cp5.addButton("salvar")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[3])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("salvar_label")
    .setText("SAVE JPG")
    .setPosition(SubmenuX+Col2+15, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  

  // VIEW INFO // --------------------------------------------------  

  cp5.addToggle("viewInfo")
    .setLabel("")
    .setState(true)
    .setPosition(SubmenuX, renglones[5])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("viewInfo_label")
    .setText("VIEW INFO")
    .setPosition(SubmenuX+15, renglones[5])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  
    
      // CUSOR // ----------------------------------------------------------------------------------------------------

  cp5.addToggle("Cursor")
    .setLabel("")
    .setPosition(SubmenuX, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g6)
    ; 
  cp5.addTextlabel("Cursor_label")
    .setText("VIEW CURSOR")
    .setPosition(SubmenuX+15, renglones[6])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ; 

  // WORKGRID // --------------------------------------------------  

  cp5.addToggle("workGrid")
    .setLabel("")
    .setState(false)
    .setPosition(SubmenuX+Col2, renglones[5])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("workGrid_label")
    .setText("WORK GRID")
    .setPosition(SubmenuX+Col2+15, renglones[5])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  

  // BLUEPRINT // --------------------------------------------------  

  cp5.addToggle("bluePrintON")
    .setLabel("")
    .setState(false)
    .setPosition(SubmenuX+Col2, renglones[6])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("bluePrint_label")
    .setText("BLUE PRINT")
    .setPosition(SubmenuX+Col2+15, renglones[6])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ; 

  //// ABOUT // --------------------------------------------------  

  cp5.addToggle("aboutWindow")
    .setLabel("")
    .setPosition(SubmenuX, renglones[11])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("aboutWindow_label")
    .setText("ABOUT")
    .setPosition(SubmenuX+15, renglones[11])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  
    
    //// CONFIRM CLEAR // --------------------------------------------------  

  cp5.addToggle("confirmClear")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[11])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setState(true)
    .setSize(10, 10)
    .moveTo(g6)
    ;
  cp5.addTextlabel("confirmClear_label")
    .setText("CONFIRM CLEAR?")
    .setPosition(SubmenuX+Col2+15, renglones[11])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  

  // OSC IN // --------------------------------------------------  

  cp5.addToggle("oscIn")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[8])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g6)
    ;
  cp5.addTextlabel("oscIn_label")
    .setText("OSC Input")
    .setPosition(SubmenuX+Col2+15, renglones[8])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  
  cp5.addTextlabel("oscIn_Descript")
    .setText("Port "+port)
    .setPosition(SubmenuX+Col2+15, renglones[9])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  
  cp5.addToggle("oscMonitor")
    .setLabel("")
    .setPosition(SubmenuX+Col2, renglones[10])
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g6)
    ;
  cp5.addTextlabel("oscMonitor_label")
    .setText("OSC Monitor")
    .setPosition(SubmenuX+Col2+15, renglones[10])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ;  

  // AUDIO IN // --------------------------------------------------

  cp5.addToggle("audioInON")
    .setLabel("")
    .setPosition(SubmenuX, renglones[8])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(10, 10)
    .setState(false)
    .moveTo(g6)
    ;
  cp5.addTextlabel("audioInON_label")
    .setText("AUDIO IN")
    .setPosition(SubmenuX+15, renglones[8])
    .setColorValue(0xffffffff)
    .moveTo(g6)
    ; 
  cp5.addSlider("audioGain")
    .setLabel("Gain")
    .setPosition(SubmenuX, renglones[9])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(audioColorBackground)
    .setSize(40, 10)
    .setRange(0, 10)
    .setValue(1)
    .moveTo(g6)
    ;
  cp5.addSlider("audioPeak")
    .setLabel("")
    .setPosition(SubmenuX, renglones[10])
    .setColorActive(audioColorActive)
    .setColorForeground(audioColorForeground)
    .setColorBackground(30)
    .setSize(40, 10)
    .setRange(0, 1)
    .setValue(1)
    .moveTo(g6)
    ;

  // -------------------------------------------------- // PRESETS // --------------------------------------------------

  Group g7 = cp5.addGroup("PRESETS")                 
    .setBackgroundColor(BackgroundColor)
    .setBackgroundHeight(140)
    .setBarHeight(10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    ;  

  cp5.addTextlabel("Save_label")
    .setText("SAVE")
    .setPosition(SubmenuX, renglones[0])
    .setColorValue(0xffffffff)
    .moveTo(g7)
    ; 
  for (int x = 1; x < 11; x++) {
    cp5.addButton("SavePreset_"+x)
      .setLabel("")
      .setPosition((x * 15), renglones[1])
      .setColorActive(SavePColorActive)
      .setColorForeground(SavePColorForeground)
      .setColorBackground(SavePColorBackground)
      .setId(x)
      .setSize(10, 10)
      .moveTo(g7)
      ;
  }
  cp5.addTextlabel("Load_label")
    .setText("LOAD")
    .setPosition(SubmenuX, renglones[3])
    .setColorValue(0xffffffff)
    .moveTo(g7)
    ; 
  for (int x = 1; x < 11; x++) {
    cp5.addButton("LoadPreset_"+x)
      .setLabel("")
      .setPosition((x * 15), renglones[4])
      .setColorActive(LoadPColorActive)
      .setColorForeground(LoadPColorForeground)
      .setColorBackground(LoadPColorBackground)
      .setSize(10, 10)
      .setId(20+x)
      .moveTo(g7)
      ;
    myListener = new MyControlListener();
    cp5.getController("SavePreset_"+x).addListener(myListener);
    cp5.getController("LoadPreset_"+x).addListener(myListener);

    cp5.addTextlabel("StatusPreset_label")
      .setText("-")
      .setPosition(SubmenuX, renglones[6])
      .setColorValue(0xffffffff)
      .moveTo(g7)
      ;
  }

  //----------------------------------------------// CONFIRMACION ARE YOU SURE??? // --------------------------------------------------  

  cp5.addButton("BorrarSure")
    .setLabel("Are You Sure!?")
    .setBroadcast(false)
    .setPosition(-100, (H/2)-10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(80, 20)
    ;
  cp5.addButton("BorrarNoSure")
    .setLabel("No!")
    .setBroadcast(false)
    .setPosition(-100, (H/2)+10)
    .setColorActive(ColorActive)
    .setColorForeground(ColorForeground)
    .setColorBackground(ColorBackground)
    .setSize(80, 20)
    ;

  //----------------------------------------------// CONFIGURACION MENU // --------------------------------------------------  

  accordion = cp5.addAccordion("acc")
    .setPosition(menuX, menuH+1)
    .setWidth(menuW)
    .addItem(g1)
    .addItem(g2)
    .addItem(g3)
    .addItem(g8)
    .addItem(g4)
    .addItem(g5)
    .addItem(g6)
    .addItem(g7)
    ;
  accordion.open(1, 2);
  accordion.setCollapseMode(Accordion.MULTI);


  customize(modeselect);
  modeselect.close();
}      

void customize(DropdownList ddl) {
  ddl.setColorActive(ColorBackground);
  ddl.setColorForeground(ColorActive);
  ddl.setColorBackground(ColorForeground);
  ddl.setItemHeight(15);
  ddl.setBarHeight(15);
  ddl.addItem("trazo", 0);
  ddl.addItem("shape", 1);
  ddl.addItem("graphity", 2);
  ddl.addItem("text", 3);
  ddl.addItem("pattern", 4);
}

void customize1(DropdownList ddl) {
  ddl.setColorActive(ColorActive);
  ddl.setColorForeground(ColorForeground);
  ddl.setColorBackground(ColorBackground);
  ddl.setItemHeight(10);
  ddl.setBarHeight(15);
  ddl.addItem("rectangle", 0);
  ddl.addItem("ellipse", 1);
  ddl.addItem("triangle", 2);
  ddl.addItem("shape1", 3 );
  ddl.addItem("shape2", 4 );
  ddl.addItem("shape3", 5 );
  ddl.addItem("shape4", 6 );
}

void customizeGraphity(DropdownList ddl) {
  ddl.setColorActive(ColorActive);
  ddl.setColorForeground(ColorForeground);
  ddl.setColorBackground(ColorBackground);
  ddl.setItemHeight(10);
  ddl.setBarHeight(15);
  ddl.addItem("brush1", 0);
  ddl.addItem("brush2", 1);
  ddl.addItem("brush3", 2);
  ddl.addItem("brush4", 3 );
  ddl.addItem("brush5", 4 );
}

class MyControlListener implements ControlListener {
  int val;
  int id;
  public void controlEvent(ControlEvent theEvent) {
    println("i got an event from myToggle "+
      theEvent.getController().getId()+" to Value "+
      theEvent.getController().getValue());
    val = (int)theEvent.getController().getValue();
    id = (int)theEvent.getController().getId();
    presetSet(id, val);
  }
}