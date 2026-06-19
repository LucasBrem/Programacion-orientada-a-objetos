PVector g = new PVector(0, 1);
movil m, m2;
PVector mxy= new PVector(0, 0);
void setup() {
  size(1000, 600);
  m = new movil(width/2, height/2);
  m2 = new movil(width/3, height/2);
}

void draw() {

  frameRate(900);
  background(0);


  if (m.choca(m2.pos, m2.r)) {
    m.mover();
    m.alejar(m2.pos, 0.5);
    m.rotar();
  }


  m2.mover();

  m.mostrar();
  m2.mostrar();
}
