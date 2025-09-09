class Pelota{
  private color colorPelota;
  private PVector posicion;
  private PVector velocidad;
  
  public Pelota(){
    colorPelota = color(255);
    this.posicion = new PVector(width/2,height/2);
    this.velocidad = new PVector(0,0);
  }
  
  public void display(){
    fill(colorPelota);
    circle(posicion.x,posicion.y,50);
  }
  public void mover(){
    posicion.add(velocidad);
  }
  public void setVelocidad(float x, float y){
    velocidad.set(x,y);
  }
}
