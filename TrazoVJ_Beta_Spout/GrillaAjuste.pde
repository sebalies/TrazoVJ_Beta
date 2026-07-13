int cantidadW, cantidadH = 10;
int modul  = 50;
int esquinas = 50;

void grillaAjuste() {
  color fillWheelAlpha = color(cp5.get(ColorWheel.class, "fillWheel").r(), cp5.get(ColorWheel.class, "fillWheel").g(), cp5.get(ColorWheel.class, "fillWheel").b(), Fill_Alpha);
  color strokeWheelAlpha = color(cp5.get(ColorWheel.class, "strokeWheel").r(), cp5.get(ColorWheel.class, "strokeWheel").g(), cp5.get(ColorWheel.class, "strokeWheel").b(), Stroke_Alpha);

  canvas.stroke(0);
  canvas.fill(fillWheelAlpha);

  canvas.rect(0, 0, W, H);

  // GRILLA Horizontal
  cantidadW = floor ((W/modul)/2);
  cantidadH = floor ((H/modul)/2);
  for (int c=0; c<6; c++) {
    canvas.pushMatrix();

    if (c==1) {
      canvas.translate(W-cantidadW*modul, 0);
    } else if (c==2) {
      canvas.translate(-W/2, H-cantidadH*modul);
    } else if (c==3) {
      canvas.translate(0, H-cantidadH*modul);
    } else if (c==4) {
      canvas.translate(W-cantidadW*modul, H-cantidadH*modul);
    }
    for (int i=0; i<=cantidadW-1; i++) {
      canvas.stroke(0);
      canvas.line(i*modul, 0, i*modul, cantidadH*modul);
      for (int h=0; h<=cantidadH-1; h++) {
        canvas.rect(i*modul, h*modul, modul, modul);
        canvas.line(i*modul, h*modul, i*modul+modul, h*modul+modul);
      }
    }
    canvas.popMatrix();
  }
  canvas.translate(0, 0);


  // GRILLA Vertical
  canvas.line(0, H-1, W, H-1);
  canvas.line(W-1, 0, W-1, H);

  // AFUERA
  canvas.strokeWeight(4);
  canvas.stroke(strokeWheelAlpha);
  canvas.fill(0, 0);
  canvas.rect(0, 0, W, H);

  // VERTICALES
  canvas.strokeWeight(2);
  canvas.stroke(strokeWheelAlpha);
  canvas.line(0, H/2, W, H/2);
  canvas.line(W/2, 0, W/2, H);

  // CIRCULO
  canvas.stroke(strokeWheelAlpha);
  canvas.fill(0, 0);
  canvas.ellipseMode(CENTER);
  if (W>H) {
    canvas.ellipse(W/2, H/2, (H/4)*3, (H/4)*3);
  } else {
    canvas.ellipse(W/2, H/2, (W/4)*3, (W/4)*3);
  }

  canvas.stroke(strokeWheelAlpha);
  canvas.fill(0, 255);
  canvas.ellipseMode(CENTER);

  if (W>H) {
    canvas.ellipse(W/2, H/2, H/4, H/4);
  } else {
    canvas.ellipse(W/2, H/2, W/4, W/4);
  }

  // Triangulo esquinas
  canvas.fill(strokeWheelAlpha);
  canvas.triangle(0, H, 0, H-esquinas, esquinas, H);
  canvas.triangle(0, esquinas, 0, 0, esquinas, 0);
  canvas.triangle(W-esquinas, 0, W, 0, W, esquinas);
  canvas.triangle(W-esquinas, H, W, H-esquinas, W, H);

  // logo
  canvas.imageMode(CENTER);
  canvas.image(logo, W/2, H/2+5, 50, 50);

  // texto
  canvas.fill(0);
  canvas.stroke(255);
  canvas.strokeWeight(1);
  canvas.rect(50, H-100, 200, 50);

  canvas.textAlign(LEFT);
  canvas.textSize(12);
  canvas.fill(255);
  canvas.text("Workspace: "+W+" / "+H+" pixels", 60, H-70);

  gridPuesta = true;
}