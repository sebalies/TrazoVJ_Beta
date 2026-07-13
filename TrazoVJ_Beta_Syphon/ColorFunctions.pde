int Fill_R_Rand, Fill_G_Rand, Fill_B_Rand, Stroke_R_Rand, Stroke_G_Rand, Stroke_B_Rand;
int Fill_RGB_Sin_Mode;

//---------------------------------------------------// COLORS // ------------------------------------------------------------------------------------------------------------------------------------------------

void colorsFunctions() {
  RR = cp5.get(ColorWheel.class, "fillWheel").r();
  GG = cp5.get(ColorWheel.class, "fillWheel").g();
  BB = cp5.get(ColorWheel.class, "fillWheel").b();
  AA = Fill_Alpha;

  SRR = cp5.get(ColorWheel.class, "strokeWheel").r();
  SGG = cp5.get(ColorWheel.class, "strokeWheel").g();
  SBB = cp5.get(ColorWheel.class, "strokeWheel").b();
  SAA = Stroke_Alpha;

  rancfr =  random(255);
  rancfg =  random(255);
  rancfb =  random(255);
  rancfa =  random(Fill_Alpha);

  rancsr =  random(255);
  rancsg =  random(255);
  rancsb =  random(255);
  rancsa =  random(Stroke_Alpha);

  // FILL // --------------------------------------------

  //if (Fill_RGB_Rand == 1) {                                              
  //  RR = rancfr;
  //  GG = rancfg;
  //  BB = rancfb;
  //}
  if (Fill_R_Rand == 1) {                                              
    RR = rancfr;
  }
  if (Fill_G_Rand == 1) {                                              
    GG = rancfg;
  }
  if (Fill_B_Rand == 1) {                                              
    BB = rancfb;
  }

  if (Fill_Alpha_Rand == 1) {                                        
    AA = rancfa;
  }

  if (Fill_RGB_Sin == 1) {    
      RR = (sin(sin_angleF) * sin_amplitud/2) + sin_amplitud/2;
      GG = (sin(sin_angleF + PI/2) * sin_amplitud/2) + sin_amplitud/2;
      BB = (sin(sin_angleF + PI) * sin_amplitud/2) + sin_amplitud/2;

      sin_angleF += Fill_RGB_Sin_Rate;
    }
  
  canvas.fill(RR, GG, BB, AA);

  // STROKE // --------------------------------------------

  //if (Stroke_RGB_Rand == 1) {                                              
  //  SRR = rancsr;
  //  SGG = rancsg;
  //  SBB = rancsb;
  //}
  if (Stroke_R_Rand == 1) {                                              
    SRR = rancsr;
  }
  if (Stroke_G_Rand == 1) {                                              
    SGG = rancsg;
  }
  if (Stroke_B_Rand == 1) {                                              
    SBB = rancsb;
  }

  if (Stroke_Alpha_Rand == 1) {                                        
    SAA = rancsa;
  }

  if (Stroke_RGB_Sin == 1) {                                                   
    SRR = (sin(sin_angle) * sin_amplitud/2) + sin_amplitud/2;
    SGG = (sin(sin_angle + PI/2) * sin_amplitud/2) + sin_amplitud/2;
    SBB = (sin(sin_angle + PI) * sin_amplitud/2) + sin_amplitud/2;

    sin_angle += Stroke_RGB_Sin_Rate;
  }
  canvas.stroke(SRR, SGG, SBB, SAA);
}