private Pelota pelota;

public void setup(){
  size(700,700);
  pelota = new Pelota();
}
public void draw(){
  background(0);
  pelota.display();
  pelota.mover();
  
}
public void keyPressed() {
  if (key == 'w' || key == 'W'){
  pelota.setVelocidad(0, -3);
  }
  if (key == 's' || key == 'S'){
  pelota.setVelocidad(0, 3);
  }
  if (key == 'a' || key == 'A'){
  pelota.setVelocidad(-3, 0);
  }
  if (key == 'd' || key == 'D'){
  pelota.setVelocidad(3, 0);
  }
}

public void keyReleased() {
  pelota.setVelocidad(0, 0);  // cuando suelto la tecla, se detiene
}
