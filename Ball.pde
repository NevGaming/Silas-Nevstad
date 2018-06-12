public class Ball {
  private float x = 20;
  private float y = 20;
  private float dx = 5;
  private float dy = 5;
  private float size = 45;

  public Ball(float x, float y, float dx, float dy, float size) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.size = size;
  }

  public void move() {
    y += dy;
    x += dx;
    if(x > width || x < 0){
      dx = -dx;
    }
    if(y > height || y < 0){
      dy = -dy; 
    }
  }

  public void setdx(float dx) {
    this.dx = dx;
  }

  public void setdy(float dy) {
    this.dy = dy;
  }

  public float getdx() {
    return this.dx;
  }

  public float getdy() {
    return this.dy;
  }

  public float getX() {
    return this.x;
  }

  public float getY() {
    return this.y;
  }

  public float getSize() {
    return this.size;
  }

  public void display() {
    ellipse(x, y, size, size);
  }
  public boolean getCollision(Ball b) {
    if (dist(this.x, this.y, b.x, b.y) < this.size/2 + b.size/2) {
      return true;
    }
    return false;
  }
}
