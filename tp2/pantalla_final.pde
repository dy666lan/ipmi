int posX_boton_reiniciar = 276;
int posY_boton_reiniciar = 376;
int ancho_boton_reiniciar = 80;
int alto_boton_reiniciar = 55;

int tamaño = 200;
void mostrar_pantalla_final(){
  background(0);
  image(img7, 70, 45, 500, 220);
  rect(276, 376, ancho_boton_reiniciar, alto_boton_reiniciar, 10);
  image(restart, 276, 376, 80, 55);
}
