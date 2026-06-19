class movil {
  PVector pos, vel;
  int r = 40;
  PVector acel = new PVector(0, 0);
  float angulo = 0;
  float velAngular = 0;
  float acelAngular = 0;
  movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(1, 1);
  }

  void alejar( PVector otro, float cuanto) {
    PVector r = pos.copy();
    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarfuerza(r);
  }

  void contener() {
    if ( pos.x < 0 || pos.x > width ) {
      pos.sub(vel);
      vel.x = vel.x * -1 ;
    }

    if ( pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y = vel.y * -1;
    }
  }

  void rotar() {
    velAngular += acelAngular;
    angulo += velAngular;
    acelAngular = 0;
  }

  void mover() {

    vel.add(acel);
    acel.mult(0);
    vel.limit(150);
    pos.add(vel);
    contener();
  }



  void agregarfuerza(PVector F) {
    acel.add(F);
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r*2, r*2);
  }

  boolean choca(PVector otrapos, float otror) {
    float d = dist(pos.x, pos.y, otrapos.x, otrapos.y);
    if (d<(r+otror)) {
      return true;
    } else {
      return false;
    }
  }

  void desacelerar(float cantidad) {
    PVector R = vel.copy();
    R.normalize();
    R.mult(cantidad*-1);
    agregarfuerza(R);
  }
}
