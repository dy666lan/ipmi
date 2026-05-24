int tiempo;
//tiempo de cada pantalla en segundos
int t1 = 8;
int t2 = 10;
int t3 = 30;
int t4 = 14;
int t5 = 10;
int t6 = 10;

void control_de_estado(){
  int tiempo_pasado = ((millis()/1000) - tiempo);
  
  if(estado == 1 && tiempo_pasado >= t1){
    tiempo = millis()/1000;
    reiniciar_variables_pantalla_2();
    estado = 2;
  }
  else if(estado == 2 && tiempo_pasado >= t2){
    tiempo = millis()/1000;
    reiniciar_variables_pantalla_3();
    estado = 3;
  }
  else if(estado == 3 && tiempo_pasado >= t3){
    tiempo = millis()/1000;
    reiniciar_variables_pantalla_4();
    estado = 4;
  }
  else if(estado == 4 && tiempo_pasado >= t4){
    tiempo = millis()/1000;
    reiniciar_variables_pantalla_5();
    estado = 5;
  }
  else if(estado == 5 && tiempo_pasado >= t5){
    tiempo = millis()/1000;
    reiniciar_variables_pantalla_6();
    estado = 6;
  }
  else if(estado == 6 && tiempo_pasado >= t6){
    tiempo = millis()/1000;
    estado = 7;
  }
}

void mouseClicked(){
  int x = mouseX;
  int y = mouseY;
  
  if(estado == 0){
    if(x >= posX_boton_iniciar && x <= posX_boton_iniciar+ancho_boton_iniciar && y >= posY_boton_iniciar && y <= posY_boton_iniciar+alto_boton_iniciar){
      reiniciar_variables_pantalla_1();
      tiempo = millis()/1000;
      estado = 1;
    }
  }
  else if(estado == 7){
    if(x >= posX_boton_reiniciar&& x <= posX_boton_reiniciar+ancho_boton_reiniciar && y >= posY_boton_reiniciar && y <= posY_boton_reiniciar+alto_boton_reiniciar){
      tiempo = millis()/1000;
      estado = 0;
    }
  }
}
