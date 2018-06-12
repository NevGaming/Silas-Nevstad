class PlayerBall {
  private float x;
  private float y;
  private float size;
  private float r;
  private float g;
  private float b;
  PlayerBall(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  void display() {
    x = mouseX;
    y = mouseY;
    ellipse(x, y, size, size);
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

  public void setR(float value) {
    this.r = value;
  }
  public void setG(float value) {
    this.r = value;
  }
  public boolean getCollision(Ball b) {
    if (dist(this.x, this.y, b.x, b.y) < this.size/2 + b.size/2) {
      return true;
    }
    return false;
  }
}
