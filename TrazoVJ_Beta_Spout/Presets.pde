float colorWheel_Fill_R, colorWheel_Fill_G, colorWheel_Fill_B;
float colorWheel_Stroke_R, colorWheel_Stroke_G, colorWheel_Stroke_B;
int LoadPreset_10;

// PRESETS //  ---------------------------------------------------

void presetSet(int id, int val) {

  //   // SAVE

  if (id == 1) {          
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_1"));
    println("Preset 1 Saved");
    espera("Preset 1 Saved");
  } 
  if (id == 2) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_2"));
    println("Preset 2 Saved");
    espera("Preset 2 Saved");
  } 
  if (id == 3) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_3"));
    println("Preset 3 Saved");
    espera("Preset 3 Saved");
  } 
  if (id == 4) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_4"));
    println("Preset 4 Saved");
    espera("Preset 4 Saved");
  } 
  if (id == 5) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_5"));
    println("Preset 5 Saved");
    espera("Preset 5 Saved");
  } 
  if (id == 6) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_6"));
    println("Preset 6 Saved");
    espera("Preset 6 Saved");
  } 
  if (id == 7) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_7"));
    println("Preset 7 Saved");
    espera("Preset 7 Saved");
  } 
  if (id == 8) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_8"));
    println("Preset 8 Saved");
    espera("Preset 8 Saved");
  } 
  if (id == 9) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_9"));
    println("Preset 9 Saved");
    espera("Preset 9 Saved");
  } 
  if (id == 10) {
    saveColorWheels();
    cp5.saveProperties(("presets/Preset_10"));
    println("Preset 10 Saved");
    espera("Preset 10 Saved");
  } 

  //  // LOAD

  if (id == 21) {                                
    cp5.loadProperties(("presets/Preset_1"));
    updateColorWheels(); 
    println("Preset 1 Load");
    espera("Preset 1 Load");
  }
  if (id == 22) {
    cp5.loadProperties(("presets/Preset_2"));
    updateColorWheels(); 
    println("Preset 2 Load");
    espera("Preset 2 Load");
  }
  if (id == 23) {
    cp5.loadProperties(("presets/Preset_3"));
    updateColorWheels(); 
    println("Preset 3 Load");
    espera("Preset 3 Load");
  }
  if (id == 24) {
    cp5.loadProperties(("presets/Preset_4"));
    updateColorWheels(); 
    println("Preset 4 Load");
    espera("Preset 4 Load");
  }
  if (id == 25) {
    cp5.loadProperties(("presets/Preset_5"));
    updateColorWheels(); 
    println("Preset 5 Load");
    espera("Preset 5 Load");
  }
  if (id == 26) {
    cp5.loadProperties(("presets/Preset_6"));
    updateColorWheels(); 
    println("Preset 6 Load");
    espera("Preset 6 Load");
  }
  if (id == 27) {
    cp5.loadProperties(("presets/Preset_7"));
    updateColorWheels(); 
    println("Preset 7 Load");
    espera("Preset 7 Load");
  }
  if (id == 28) {
    cp5.loadProperties(("presets/Preset_8"));
    updateColorWheels(); 
    println("Preset 8 Load");
    espera("Preset 8 Load");
  }
  if (id == 29) {
    cp5.loadProperties(("presets/Preset_9"));
    updateColorWheels(); 
    println("Preset 9 Load");
    espera("Preset 9 Load");
  }
  if (LoadPreset_10 == 30) {
    cp5.loadProperties(("presets/Preset_10"));
    updateColorWheels(); 
    println("Preset 10 Load");
    espera("Preset 10 Load");
  }
}

void saveColorWheels() {
  cp5.get(Textfield.class, "Fill_R_Buffer") .setValue(str(cp5.get(ColorWheel.class, "fillWheel").r()));
  cp5.get(Textfield.class, "Fill_G_Buffer") .setValue(str(cp5.get(ColorWheel.class, "fillWheel").g()));
  cp5.get(Textfield.class, "Fill_B_Buffer") .setValue(str(cp5.get(ColorWheel.class, "fillWheel").b()));

  cp5.get(Textfield.class, "Stroke_R_Buffer") .setValue(str(cp5.get(ColorWheel.class, "strokeWheel").r()));
  cp5.get(Textfield.class, "Stroke_G_Buffer") .setValue(str(cp5.get(ColorWheel.class, "strokeWheel").g()));
  cp5.get(Textfield.class, "Stroke_B_Buffer") .setValue(str(cp5.get(ColorWheel.class, "strokeWheel").b()));
}

void updateColorWheels() {
  String F_R = cp5.get(Textfield.class, "Fill_R_Buffer").getText();
  String F_G = cp5.get(Textfield.class, "Fill_G_Buffer").getText();
  String F_B = cp5.get(Textfield.class, "Fill_B_Buffer").getText();
  String S_R = cp5.get(Textfield.class, "Stroke_R_Buffer").getText();
  String S_G = cp5.get(Textfield.class, "Stroke_G_Buffer").getText();
  String S_B = cp5.get(Textfield.class, "Stroke_B_Buffer").getText();
  cp5.get(ColorWheel.class, "fillWheel") .setRGB(color(int(F_R), int(F_G), int(F_B)));
  cp5.get(ColorWheel.class, "strokeWheel") .setRGB(color(int(S_R), int(S_G), int(S_B)));
}


void espera(String texto) {
    cp5.get(Textlabel.class, "StatusPreset_label") .setText(texto);
}