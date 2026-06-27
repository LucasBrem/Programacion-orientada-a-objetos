class pelota {
  PVector pos;
  PVector vel;
  float r = 10;
  color C = color(255);

  pelota() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(1, 1);
  }
  void mover() {
    pos.add(vel);
    rebotar();
    reinicio();
  }
  void mostrar() {
    fill(C);
    circle(pos.x, pos.y, r);
  }
  void rebotar() {
    if (pos.y>height-r || pos.y<r) {
      vel.y = vel.y*-1;
    }
  }
  void reinicio() {
    if (pos.x>width-r || pos.x<r) {
      pos = new PVector(width/2, height/2);
    }
  }
}

class paleta {
  PVector pos;
  PVector vel;
  PVector pos2;
  paleta() {
    pos= new PVector(0+40, height/2);
    vel= new PVector(0, 0);
    pos2= new PVector(width-40, height/2);
  }

  void mostrar2() {
    fill(0, 0, 255);
    rect(pos2.x, pos2.y, 10, 45);
  }

  void mostrar() {
    fill(0, 0, 255);
    rect(pos.x, pos.y, 10, 45);
  }

  void moverarriba() {
    pos.add(vel);

    vel.y = -3 ;
  }
  void moverabajo() {
    pos.add(vel);

    vel.y = 3 ;
  }
  void moverabajo2() {
    pos2.add(vel);

    vel.y = 3 ;
  }
  void moverarriba2() {
    pos2.add(vel);

    vel.y = -3 ;
  }
}
