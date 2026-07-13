boolean Trazo_Width_Audio = false;
boolean Fill_Alpha_Audio = false;
boolean Stroke_Alpha_Audio = false;
boolean Trazo_FX_Audio = false;
boolean Shape_Size_Audio = false;
boolean Shape_Stroke_Width_Audio = false;
boolean Shape_Rotation_Vel_Audio = false;
boolean Shape_Rotation_Offset_Audio = false;
boolean Shape_Spray_Amplitud_Audio = false;
boolean Graphity_Size_Audio = false;
boolean Graphity_Spray_Amplitud_Audio = false;
boolean Text_Size_Audio = false;
boolean Text_Rotation_Vel_Audio = false;
boolean Text_Rotation_Offset_Audio = false;
boolean Text_Spray_Amp_Audio = false;
boolean Pattern_SizeX_Audio = false;
boolean Pattern_SizeY_Audio = false;
boolean Pattern_Stroke_Width_Audio = false;
boolean Pattern_Spacing_X_Audio = false;
boolean Pattern_Spacing_Y_Audio = false;
boolean Pattern_Rotation_Vel_Audio = false;
boolean Pattern_Rotation_Offset_Audio = false;

void audioInMode() {

  if (Fill_Alpha_Audio && audioInON) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 255)*audioGain;
    cp5.get(Slider.class, "Fill_Alpha") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Fill_Alpha").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Stroke_Alpha_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 255)*audioGain;
    cp5.get(Slider.class, "Stroke_Alpha") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Stroke_Alpha").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Trazo_Width_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 300)*audioGain;
    cp5.get(Slider.class, "Trazo_Width") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Trazo_Width").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Trazo_FX_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 150)*audioGain;
    cp5.get(Slider.class, "Trazo_FX") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Trazo_FX").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Shape_Size_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 300)*audioGain;
    cp5.get(Slider.class, "Shape_Size") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Shape_Size").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Shape_Stroke_Width_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 100)*audioGain;
    cp5.get(Slider.class, "Shape_Stroke_Width") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Shape_Stroke_Width").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Shape_Rotation_Vel_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 0.5)*audioGain;
    cp5.get(Slider.class, "Shape_Rotation_Vel") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Shape_Rotation_Vel").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Shape_Rotation_Offset_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 500)*audioGain;
    cp5.get(Slider.class, "Shape_Rotation_Offset") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Shape_Rotation_Offset").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Shape_Spray_Amplitud_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 500)*audioGain;
    cp5.get(Slider.class, "Shape_Spray_Amplitud") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Shape_Spray_Amplitud").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }
  
  if (Graphity_Size_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 300)*audioGain;
    cp5.get(Slider.class, "Graphity_Size") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Graphity_Size").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }
  
  if (Graphity_Spray_Amplitud_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 300)*audioGain;
    cp5.get(Slider.class, "Graphity_Spray_Amplitud") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Graphity_Spray_Amplitud").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Text_Size_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 300)*audioGain;
    cp5.get(Slider.class, "Text_Size") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Text_Size").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Text_Rotation_Vel_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 0.5)*audioGain;
    cp5.get(Slider.class, "Text_Rotation_Vel") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Text_Rotation_Vel").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Text_Rotation_Offset_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 500)*audioGain;
    cp5.get(Slider.class, "Text_Rotation_Offset") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Text_Rotation_Offset").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Text_Spray_Amp_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 500)*audioGain;
    cp5.get(Slider.class, "Text_Spray_Amp") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Text_Spray_Amp").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_SizeX_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 150)*audioGain;
    cp5.get(Slider.class, "Pattern_SizeX") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_SizeX").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_SizeY_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 150)*audioGain;
    cp5.get(Slider.class, "Pattern_SizeY") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_SizeY").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_Stroke_Width_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 10)*audioGain;
    cp5.get(Slider.class, "Pattern_Stroke_Width") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_Stroke_Width").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_Spacing_X_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 150)*audioGain;
    cp5.get(Slider.class, "Pattern_Spacing_X") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_Spacing_X").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_Spacing_Y_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 150)*audioGain;
    cp5.get(Slider.class, "Pattern_Spacing_Y") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_Spacing_Y").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_Rotation_Vel_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 0.5)*audioGain;
    cp5.get(Slider.class, "Pattern_Rotation_Vel") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_Rotation_Vel").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }

  if (Pattern_Rotation_Offset_Audio) {
    float gain = map(audioIn.left.level(), 0, 1, 0, 500)*audioGain;
    cp5.get(Slider.class, "Pattern_Rotation_Offset") .setValue(gain) .setColorActive(audioColorActive) .setColorForeground(audioColorForeground) .setColorBackground(audioColorBackground);
  } else {
    cp5.get(Slider.class, "Pattern_Rotation_Offset").setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground);
  }
}

void estadoAudioToggles(boolean estado, int ColAudio) {
  cp5.get(Slider.class, "audioPeak") .setVisible(estado) .setValue(audioPeak);
  cp5.get(Toggle.class, "Fill_Alpha_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Stroke_Alpha_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Trazo_Width_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Trazo_FX_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Shape_Size_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Shape_Stroke_Width_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Shape_Rotation_Vel_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Shape_Rotation_Offset_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Shape_Spray_Amplitud_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Graphity_Size_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Graphity_Spray_Amplitud_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Text_Size_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Text_Rotation_Vel_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Text_Rotation_Offset_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Text_Spray_Amp_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_SizeX_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_SizeY_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_Stroke_Width_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_Spacing_X_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_Spacing_Y_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_Rotation_Vel_Audio") .setVisible(estado);
  cp5.get(Toggle.class, "Pattern_Rotation_Offset_Audio") .setVisible(estado);

  cp5.get(Slider.class, "Fill_Alpha")  .setPosition(SubmenuX+Col2+ColAudio, renglones[5]);
  cp5.get(Slider.class, "Stroke_Alpha")   .setPosition(SubmenuX+Col2+ColAudio, renglones[11]);
  cp5.get(Slider.class, "Trazo_Width")   .setPosition(SubmenuX+ColAudio, renglones[0]);
  cp5.get(Slider.class, "Trazo_FX")   .setPosition(SubmenuX+ColAudio, renglones[4]);
  cp5.get(Slider.class, "Shape_Size")   .setPosition(SubmenuX+ColAudio, renglones[0]);
  cp5.get(Slider.class, "Shape_Stroke_Width")   .setPosition(SubmenuX+ColAudio, renglones[3]);
  cp5.get(Slider.class, "Shape_Rotation_Vel")   .setPosition(SubmenuX+Col2+ColAudio, renglones[6]);
  cp5.get(Slider.class, "Shape_Rotation_Offset")   .setPosition(SubmenuX+Col2+ColAudio, renglones[7]);
  cp5.get(Slider.class, "Shape_Spray_Amplitud")   .setPosition(SubmenuX+Col2+ColAudio, renglones[10]);
  cp5.get(Slider.class, "Graphity_Size")   .setPosition(SubmenuX+ColAudio, renglones[0]);
  cp5.get(Slider.class, "Graphity_Spray_Amplitud")   .setPosition(SubmenuX+Col2+ColAudio, renglones[7]);
  
  cp5.get(Slider.class, "Text_Size")       .setPosition(SubmenuX+ColAudio, renglones[0]);
  cp5.get(Slider.class, "Text_Rotation_Vel")       .setPosition(SubmenuX+Col2+ColAudio, renglones[3]);
  cp5.get(Slider.class, "Text_Rotation_Offset")       .setPosition(SubmenuX+Col2+ColAudio, renglones[4]);
  cp5.get(Slider.class, "Text_Spray_Amp")      .setPosition(SubmenuX+ColAudio, renglones[3]);
  cp5.get(Slider.class, "Pattern_SizeX")   .setPosition(SubmenuX+ColAudio, renglones[0]);
  cp5.get(Slider.class, "Pattern_SizeY")   .setPosition(SubmenuX+ColAudio, renglones[1]);
  cp5.get(Slider.class, "Pattern_Stroke_Width")   .setPosition(SubmenuX+ColAudio, renglones[2]);
  cp5.get(Slider.class, "Pattern_Spacing_X")   .setPosition(SubmenuX+ColAudio, renglones[5]);
  cp5.get(Slider.class, "Pattern_Spacing_Y")    .setPosition(SubmenuX+ColAudio, renglones[6]);
  cp5.get(Slider.class, "Pattern_Rotation_Vel")   .setPosition(SubmenuX+Col2+ColAudio, renglones[5]);
  cp5.get(Slider.class, "Pattern_Rotation_Offset")   .setPosition(SubmenuX+Col2+ColAudio, renglones[6]);

  if (estado == false) {
    cp5.get(Slider.class, "Fill_Alpha") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground)  .setPosition(SubmenuX+Col2+ColAudio, renglones[5]);
    cp5.get(Slider.class, "Stroke_Alpha") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[11]);
    cp5.get(Slider.class, "Trazo_Width") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[0]);
    cp5.get(Slider.class, "Trazo_FX") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[4]);
    cp5.get(Slider.class, "Shape_Size") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[0]);
    cp5.get(Slider.class, "Shape_Stroke_Width") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[3]);
    cp5.get(Slider.class, "Shape_Rotation_Vel") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[6]);
    cp5.get(Slider.class, "Shape_Rotation_Offset") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[7]);
    cp5.get(Slider.class, "Shape_Spray_Amplitud") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[10]);
    cp5.get(Slider.class, "Graphity_Size") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[0]);  
    cp5.get(Slider.class, "Graphity_Spray_Amplitud")  .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[7]);
  
    cp5.get(Slider.class, "Text_Size") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground)     .setPosition(SubmenuX+ColAudio, renglones[0]);
    cp5.get(Slider.class, "Text_Rotation_Vel") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground)     .setPosition(SubmenuX+Col2+ColAudio, renglones[3]);
    cp5.get(Slider.class, "Text_Rotation_Offset") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground)     .setPosition(SubmenuX+Col2+ColAudio, renglones[4]);
    cp5.get(Slider.class, "Text_Spray_Amp") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground)    .setPosition(SubmenuX+ColAudio, renglones[3]);
    cp5.get(Slider.class, "Pattern_SizeX") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[0]);
    cp5.get(Slider.class, "Pattern_SizeY") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[1]);
    cp5.get(Slider.class, "Pattern_Stroke_Width") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[2]);
    cp5.get(Slider.class, "Pattern_Spacing_X") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+ColAudio, renglones[5]);
    cp5.get(Slider.class, "Pattern_Spacing_Y") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground)  .setPosition(SubmenuX+ColAudio, renglones[6]);
    cp5.get(Slider.class, "Pattern_Rotation_Vel") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[5]);
    cp5.get(Slider.class, "Pattern_Rotation_Offset") .setColorActive(ColorActive) .setColorForeground(ColorForeground) .setColorBackground(ColorBackground) .setPosition(SubmenuX+Col2+ColAudio, renglones[6]);
  }
}