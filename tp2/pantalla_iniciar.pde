int posX_boton_iniciar = 276;
int posY_boton_iniciar = 376;
int ancho_boton_iniciar = 80;
int alto_boton_iniciar = 55;

void mostrar_pantalla_iniciar(){
  image(inicio, 0, 0, width, height);
  //background(0);
  rect(276, 376, ancho_boton_iniciar, alto_boton_iniciar, 10);
  text("Iniciar", 0, 0);
   image(play, 276, 376, 80, 55);
}
