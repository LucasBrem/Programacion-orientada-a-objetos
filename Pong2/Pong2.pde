pelota p;
paleta palet;
paleta palet2;
void setup() {
  size(800, 600);
  p = new pelota();
  palet = new paleta();
  palet2 = new paleta();
}

void draw() {
  background(0);

  if (keyPressed == true) {
    if (key == 'w' || key == 'W') {
      palet.moverarriba();
    }
    if (key == 's' || key == 'S') {
      palet.moverabajo();
    }
    if (key == 'o' || key == 'O') {
      palet2.moverarriba2();
    }
    if (key == 'l' || key == 'L') {
      palet2.moverabajo2();
    }
  }

  p.mover();
  p.mostrar();
  palet.mostrar();
  palet2.mostrar2();
}
