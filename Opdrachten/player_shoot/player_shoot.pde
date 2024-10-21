Player p1;
ArrayList<Bullet> bulletList;
ArrayList<Enemy> enemyList;
int score = 0; // Score variable
boolean gameOver = false; // Game over condition
float Timer = 3;

void setup() {
  size(1200, 800);
  resetGame(); // Initialize game state
}

void draw() {
  background(42);
  
  if (gameOver) {
    displayGameOver();
    return;
  }

  // Player actions
  p1.render();
  p1.move();
  p1.jumping();
  p1.falling();
  p1.topOfJumping();
  p1.land();

  // Enemy actions
  for (int i = enemyList.size() - 1; i >= 0; i--) {
    Enemy anEnemy = enemyList.get(i);
    anEnemy.move();
    anEnemy.render();
    
    // Check for collision with player
    if (p1.checkCollision(anEnemy)) {
      gameOver = true; // End the game if player collides with enemy
    }
  }

  // Bullet actions
  for (int i = bulletList.size() - 1; i >= 0; i--) {
    Bullet aBullet = bulletList.get(i);
    aBullet.render();
    aBullet.move();
    aBullet.checkRemove();

    for (int j = enemyList.size() - 1; j >= 0; j--) {
      Enemy anEnemy = enemyList.get(j);
      if (aBullet.shootEnemy(anEnemy)) {
        score++; // Increment score when an enemy is killed
        enemyList.remove(anEnemy); // Remove the enemy
      }
    }
    
    if (aBullet.shouldRemove) {
      bulletList.remove(aBullet);
    }
  }

  // Enemy spawn timer
  Timer -= 0.03;
  if (Timer <= 0) {
    enemyList.add(new Enemy(random(0, width), 0, 50, 100));
    Timer = 3;
  }

  // Display score
  fill(255);
  textSize(32);
  text("Score: " + score, 10, 30);
}

void keyPressed() {
  if (gameOver && key == ' ') {
    resetGame(); // Reset the game
    return;
  }

  if (key == 'a') {
    p1.isMovingLeft = true;
  }

  if (key == 'd') {
    p1.isMovingRight = true;
  }

  if (key == 'w' && !p1.isJumping && !p1.isFalling) {
    p1.isJumping = true;
    p1.highestY = p1.y - p1.jumpHeight;
  }

  if (key == ' ' && !gameOver) {
    bulletList.add(new Bullet(p1.x, p1.y));
  }
}

void resetGame() {
  score = 0;
  gameOver = false;
  Timer = 3;

  // Reset player position
  p1 = new Player(width / 2, height - 50, 50, 50);

  // Clear the lists
  bulletList = new ArrayList<Bullet>();
  enemyList = new ArrayList<Enemy>();
  
  // Add initial enemies
  enemyList.add(new Enemy(300, 200, 100, 200));
  enemyList.add(new Enemy(600, 300, 50, 100));
}

void displayGameOver() {
  fill(255, 0, 0);
  textSize(64);
  text("Game Over", width / 2 - 150, height / 2);
  textSize(32);
  text("Final Score: " + score, width / 2 - 100, height / 2 + 50);
  text("Press SPACE to Restart", width / 2 - 150, height / 2 + 100);
}


void keyReleased() {
  if (key == 'a') {
    p1.isMovingLeft = false;
  }
  if (key == 'd') {  
    p1.isMovingRight = false;
  }
}
