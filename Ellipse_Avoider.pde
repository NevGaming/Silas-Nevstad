ArrayList<Ball> balls = new ArrayList<Ball>();
boolean ballChange;
PShape s;
PlayerBall player = new PlayerBall(200, 200, 30);

void setup() { 
  size(640, 640);
  ballChange = false;
  for (int i = 0; i < 20; i++) {
    balls.add(new Ball(random(0, 640), random(0, 640), random(-5, 5), random(-5, 5), random(40, 60)));
  }
  size(640, 640);
  s = loadShape("GAMEOVER.svg");
}

void draw() {
  background(155);
  fill(255, 50, 0);
  ellipse(mouseX, mouseY, 35, 35);
  fill(0, 255, 0);
  for (Ball b : balls) {
    b.display();
    b.move();
    if (player.getCollision(b)== true) {
      System.out.println(" GAMEOVER! ");
      shape(s, 10, 10, 640, 640);
      s.setVisible(player.getCollision(b));
    }
  }
}
