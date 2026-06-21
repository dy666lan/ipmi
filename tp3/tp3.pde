//https://youtu.be/rJoPXbjrK-Y

PImage ilusion_27;

float angulo_original = 33.805; // en grados, se pasa a radianes antes de usar rotate
float angulo = angulo_original;
float offset_random_angulo = 0;

float largo_cruzada_original = 20;
float largo_cruzada = largo_cruzada_original;
float offset_largo_cruzada = 0;

float offset_cruzada1_original = 6.66; 
float offset_cruzada2_original = 15;
float offset_cruzada1 = offset_cruzada1_original;
float offset_cruzada2 = offset_cruzada2_original;
float offset_random_1 = 0;
float offset_random_2 = 0;

//velocidad para la aproximacion del valor de lineas, movimiento del dibujo y angulo
float vel_linea = 0.25;
float vel_angulo = 0.30;

float mover_x = 0;
float mover_y = 0;

float margen = 0.15; // margen para decir si dos numeros son iguales

void setup() {
  size(800, 400);
  ilusion_27 = loadImage("ilusion_27.jpeg");
}

void dibujar_diagonales() {
  int cantidad_diagonales = 30;
  int cantidad_cruzadas = 60;
  
  offset_cruzada1 = aproximar_valor(offset_cruzada1, offset_cruzada1_original+offset_random_1, vel_linea);
  offset_cruzada2 = aproximar_valor(offset_cruzada2, offset_cruzada2_original+offset_random_2, vel_linea);
  largo_cruzada = aproximar_valor(largo_cruzada, largo_cruzada_original+offset_largo_cruzada, vel_linea);
  angulo = aproximar_valor(angulo, angulo_original+offset_random_angulo, vel_angulo);
  
  // espacios entre las diagonales y entre las rectas que las cruzan
  float offset_horizontal = 36.8825;
  float offset_vertical = 21.8;
  //offset_vertical = map(mouseX, 0, width, 20, 25);
  
  rotate(radians(angulo));

  for (int i = 1; i <= cantidad_diagonales; i++) {
    float x = offset_horizontal*i;
    float y = height;
    
    strokeWeight(3.5);
    line(x, -width, x, width);

    for (int j = 1; j <= cantidad_cruzadas; j++) {
      if (es_impar(i)) {
        //cruzadas paralelas a y
        strokeWeight(2.5);
        line(x-(largo_cruzada/2), y-offset_cruzada2, x+(largo_cruzada/2), y+offset_cruzada2);
      }
      else {
        //cruzadas paralelas a x
        strokeWeight(3.5);
        line(x-(largo_cruzada/2), y+offset_cruzada1, x+(largo_cruzada/2), y-offset_cruzada1);
      }
      
      //float compenso = map(mouseX, 0, width, -1, 1);
      //print(compenso, "\n");
      
      // las cruzadas paralelas a x van bajando a medida que i crece, compenso subiendolas un poco
      y -= offset_vertical +(0.09*i);
    }
  }
}


void draw() {
  background(255);
  //print(mouseX, ", ", mouseY, "\n");
  //print(en_obra_original(mouseX, mouseY), "\n");
  
  pushMatrix();
  mover_dibujo(!en_obra_original(mouseX, mouseY));
  dibujar_diagonales();
  popMatrix();
  image(ilusion_27, 0, 0);
}

void mouseClicked(){
  if(mouseButton == LEFT){
    if(en_obra_original(mouseX, mouseY)){
      resetear_variables();
    }
    else{
      randomizar_offset();
    }
  }
}
