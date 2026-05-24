PImage img1, img2, img3, img4, img5, img6, img7, play, restart, inicio;
int estado = 0;
PFont fuente;

void setup(){
  size(640,480);
  inicio = loadImage("inicio.jpeg");
  img1 = loadImage("1.jpeg");
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  img4 = loadImage("4.jpg");
  img5 = loadImage("5.png");
  img6 = loadImage("6.png");
  img7 = loadImage("7.jpg");
  play = loadImage("play.png");
  restart = loadImage("restart.png");
  
  fuente = loadFont("NSimSun-16.vlw");
  textFont(fuente);
}

void draw(){
  control_de_estado();
  
  if(estado == 0){
    mostrar_pantalla_iniciar();
  }
  else if(estado == 1){
    mostrar_pantalla_1();
  }
  else if(estado == 2){
    mostrar_pantalla_2();
  }
  else if(estado == 3){
    mostrar_pantalla_3();
  }
  else if(estado == 4){
    mostrar_pantalla_4();
  }
  else if(estado == 5){
    mostrar_pantalla_5();
  }
  else if(estado == 6){
    mostrar_pantalla_6();
  }
  else if(estado == 7){
    mostrar_pantalla_final();
  }
}
