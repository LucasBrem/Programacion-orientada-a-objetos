PVector g = new PVector(0, 1);
movil m, m2;
PVector mxy= new PVector(0, 0);
void setup() {
  size(1000, 600);
  m = new movil(width/2, height/2);
  m2 = new movil(width/3, height/2);
}

void draw() {
  mxy.x = mouseX;
  mxy.y = mouseY;
  frameRate(70);
  background(0);
  m.agregarfuerza(g);
  m2.agregarfuerza(g);
  if (m.choca(m2.pos, m2.r)) {
  m.alejar(m2.pos,m2.r);
  m2.alejar(m.pos,m.r);
  
  }

  m.mover();
  m2.mover();
  m.mostrar();
  m2.mostrar();
 
}
