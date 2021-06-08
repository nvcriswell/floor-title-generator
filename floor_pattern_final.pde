//syntax for creating an array of custom objects:
//https://processing.org/examples/arrayobjects.html


PImage img1;
PImage img2;
PImage img3;
PImage img4;

boolean pressed = false;

boolean callMethod = true;

void setup() {
  img1 = loadImage("diamond_1.jpg");
  img2 = loadImage("diamond_4.jpg");
  img3 = loadImage("long.jpg");
  img4 = loadImage("long2.jpg");
  size(1500, 1000);
  //fullScreen();
}
int numsq = 10;
int unitx = 1000/numsq;
int unity = 1000/numsq;
int numsqx = ((1500-1000)/unitx) + numsq;

void draw() {
  float xbox = (mouseX/unitx - (width%numsqx))*unitx;
  float ybox = (mouseY/unity - (height%numsq))*unity;

  if (callMethod) {
    tile();
    callMethod = false;
  } 

  if (keyPressed) {
    if (key == ENTER) {
      tile2();
    }
  }

  if (mousePressed == true) {
    pressed = true;
  } 
  if (pressed == true) {

    float rand = int(random(2, 6));
    print(rand);
    if (rand == 2) {
      image(img2, xbox, ybox, unitx, unity); 
      pressed = false;
    } 
    if (rand == 3) {
      image(img3, xbox, ybox, unitx, unity); 
      pressed = false;
    }
    if (rand == 4) {
      image(img1, xbox, ybox, unitx, unity); 
      pressed = false;
    }
    if (rand == 5) {
      image(img4, xbox, ybox, unitx, unity); 
      pressed = false;
    }
  }
}

void tile() {
  for (int j = 0; j < numsq; j++) {
    for (int i=0; i<numsqx; i++) {
      float rand = int(random(1, 5));
      if (rand == 1) {
        image(img1, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      } else if (rand == 2) {
        image(img2, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      } else if (rand == 3) {
        image(img3, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      } else if (rand == 4) {
        image(img4, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      }
    }
  }
}

void tile2() {
  float randy = int(random(1, 5));
  for (int j = 0; j < numsq; j++) {
    for (int i=0; i<numsqx; i++) {
      if (randy == 1) {
        image(img1, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      } else if (randy == 2) {
        image(img2, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      } else if (randy == 3) {
        image(img3, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      } else if (randy == 4) {
        image(img4, (unitx)*i, (unity)*j, width/numsqx, height/numsq);
      }
    }
  }
}
