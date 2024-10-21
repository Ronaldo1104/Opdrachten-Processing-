//enemy geraakt levert punten op
//Enemy class uibreiden: groote varieert en daarmee oook hoeveel punten die waard is.

Player p1;
Enemy e1;
Enemy e2;

ArrayList<Bullet> bulletList;
ArrayList<Enemy> enemyList;
boolean called = true;
float Timer = 3;



void setup() {
 size(1200, 800);

  //Dit laat de speler bewegen

  p1 = new Player(width/2, height-50, 50, 50);
  e1 = new Enemy (300, 200, 100, 200);  // dit is de groote van je enemy
  e2 = new Enemy (600, 300, 50, 100);


  bulletList = new ArrayList<Bullet>();
  enemyList = new ArrayList<Enemy>();


}



void draw() {

  background(42);
  // Dit laat de speler schieten en bewegen
  p1.render();
  p1.move();
  p1.jumping();
  p1.falling();
  p1.topOfJumping();
  p1.land();


// hier in heb ik gezet dat mijn speler bullet laat schieten en dat het de enemy moet raken 
  for (Enemy anEnemy : enemyList) {
    called = true;
    anEnemy.move();
    anEnemy.render();
  }

  // Dit laat de bullets afgaan

  for (Bullet aBullet : bulletList) {
    aBullet.render();
    aBullet.move();
    aBullet.checkRemove();

    for (Enemy anEnemy : enemyList) {
      aBullet.shootEnemy(anEnemy);
    }
    
  }

  // dit maakt bullets aan 

  for (int i = bulletList.size()-1; i >= 0; i=i-1) {
    Bullet aBullet = bulletList.get(i);
    
// hier kijk het of het is verwijderdert

    if (aBullet.shouldRemove == true) {
      bulletList.remove(aBullet);
    }
  }
  for (int i = enemyList.size()-1; i >= 0; i=i-1) {
    Enemy anEnemy = enemyList.get(i);

    if (anEnemy.shouldRemove == true) {
      anEnemy.move();
      enemyList.remove(anEnemy) ;
      
    }
  }
  Timer  -= 0.03;
  if (Timer <=0) {
     Enemy en = new Enemy (600, 300, 50, 100);
     enemyList.add(en);
    Timer = 3;
 
  }
}

void keyPressed() {
  if (key == 'a') {
    p1.isMovingLeft = true;
  }

  if (key == 'd') {
    p1.isMovingRight = true;
  }

  if (key == 'w' && p1.isJumping == false && p1.isFalling == false) {
    p1.isJumping = true;
    p1.highestY = p1.y - p1.jumpHeight;
  }

  //Dit maakt nieuwe bullets aan
  if (key == ' ') {
    bulletList.add( new Bullet(p1.x, p1.y) );
  }
}

void keyReleased() {
  if (key == 'a') {
    p1.isMovingLeft = false;
  }
  if (key == 'd') {
    p1.isMovingRight = false;
  }
}
