private Pelota pelota;
private int tiempoInicio;
private boolean juegoActivo;

public void setup() {
  size(700, 700);
  pelota = new Pelota();
  tiempoInicio = millis();
  juegoActivo = true;
  println("¡Comienza el juego!");
}

public void draw() {
  background(0);
  // calcular tiempo transcurrido en segundos
  int tiempoActual = (millis() - tiempoInicio) / 1000;
  if (juegoActivo) {
    pelota.display();
    pelota.mover();
    textSize(30);
    fill(255, 0, 0);
    text("Tiempo: " + tiempoActual, 20, 30);
    // si llega a 60 segundos, termina el juego
    if (tiempoActual >= 60) {
      juegoActivo = false;
      println("¡Juego finalizado!");
    }
  } else {
    // pantalla de fin del juego
    fill(255, 0, 0);
    textSize(32);
    text("¡Tiempo terminado!", width/2 - 120, height/2);
  }
}

public void keyPressed() {
  if (!juegoActivo) return; // no permite al jugador moverse si el juego termina

  if (key == 'w' || key == 'W') {
    pelota.setVelocidad(0, -3);
    pelota.setColor(color(0, 0, 255));
  }
  if (key == 's' || key == 'S') {
    pelota.setVelocidad(0, 3);
    pelota.setColor(color(255, 0, 0));
  }
  if (key == 'a' || key == 'A') {
    pelota.setVelocidad(-3, 0);
    pelota.setColor(color(0, 255, 0));
  }
  if (key == 'd' || key == 'D') {
    pelota.setVelocidad(3, 0);
    pelota.setColor(color(255, 255, 0));
  }
}

public void keyReleased() {
  if (!juegoActivo) return;
  pelota.setVelocidad(0, 0);
}
