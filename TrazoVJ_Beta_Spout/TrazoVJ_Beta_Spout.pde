// TrazoVJ 2.0 
// @ Sebastian Alies - www.sebastianalies.com // 

import spout.*;
import oscP5.*;
import netP5.*;
import ddf.minim.*;
import controlP5.*;

Spout spout;
ControlP5 cp5;
DropdownList modeselect, shapeselect, graphityselect;
Accordion accordion;
MyControlListener myListener;
OscP5 oscP5;
OscProperties properties;
Minim minim;
AudioInput audioIn;

PGraphics canvas;
PImage logo, bluePrint, brushPNG;
PShape vectorSVG;
int port = 7000;
int W = 1280 ;
int H = 720;
int menuW = 200;
int menuH = 200;
int MODE = 0;
int shape = 0;
int Gost_Mode = 0;
int Col1=0;
int clearOnLoad =0;
boolean aboutWindow;
boolean eraseON = false;
boolean gridON = false;
boolean gridPuesta = false;
boolean oscMonitor = false;
boolean bluePrintON = false;
boolean audioInON = false;
boolean confirmClear = true;
float audioPeak, audioGain;
float Text_Size = 150;
float BackgroundGost;

void settings() {
  size(W + menuW, H, P3D);
  PJOGL.profile=1;
}

void setup() {
  canvas = createGraphics(W, H, P2D);
  surface.setResizable(true);
  frameRate(120);
  
  minim = new Minim(this);
  audioIn = minim.getLineIn();
  
  spout = new Spout(this);
  spout.createSender("TrazoVJ");
  
  oscP5 = new OscP5(this, port);
  controls();
     
  vectorSVG = loadShape("shapes/shape1.svg");
  logo = loadImage("TS_logo.png");
  bluePrint = loadImage("blueprint/BluePrint.png");  
}

void draw() {
  surface.setSize(W + menuW, H);
  canvas.beginDraw();

  if (clearOnLoad == 0) {
    canvas.background(0);
    background(0);
    clearOnLoad = 1;
    estadoAudioToggles(false, 0);
    print("Clear");
  }

  if (Gost_Mode == 1) {
    canvas.background(0, BackgroundGost);
  }

  if (mousePressed == true && mouseX < W && mouseButton == LEFT && gridON == false && aboutWindow == false) {
    if (MODE == 0) {
      trazoModo();
    }
    if (MODE == 1) {
      shapeModo();
    }
    if (MODE == 2) {
      graphityModo();
    }
    if (MODE == 3) {
      textoModo();
    }
    if (MODE == 4) {
      patternModo();
    }
  }

  if (mousePressed == true && mouseX < W && (mouseButton == RIGHT && gridON == false && aboutWindow == false) || Erase_ON == 1 && mouseX < W) {
    eraseModo();
    eraseON = true;
  } else {
    eraseON = false;
  }

  if (gridON==true) {
    grillaAjuste();
  }

  if (gridON==false && gridPuesta==true) {
    clearOnLoad = 0;
    gridPuesta=false;
  }
  canvas.endDraw();
  image(canvas, 0, 0);
  marcaXY();

  if (aboutWindow == false) {
    spout.sendTexture(canvas);
  } else {
    aboutWindOpen();
  }

  if (workGrid) {
    workGridMode();
  }

  if (oscMonitor) {
    oscMonitorWindow();
  }

  if (bluePrintON) {
    bluePrintMode();
  }

  if (audioInON) {
    Col1=10;
    estadoAudioToggles(true, 11);
    audioInMode();
    audioPeak=audioIn.left.level()*audioGain;
  } else {
    estadoAudioToggles(false, 0);
  }

  menuGui();
}

public void controlEvent(ControlEvent theEvent) {
  colorsFunctions();
}
