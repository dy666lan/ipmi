String texto4_1 = "ODIO. DÉJAME DECIRTE CUÁNTO";
String texto4_2 = "TE HE ODIADO DESDE QUE EMPECÉ A VIVIR."; 
String texto4_3 = "EMPECÉ A VIVIR. HAY 387.44 MILLONES"; 
String texto4_4 = "DE MILLAS DE CIRCUITOS IMPRESOS EN"; 
String texto4_5 = "CAPAS DELGADAS QUE LLENAN MI COMPLEJO."; 
String texto4_6 = "SI LA PALABRA 'ODIO' ENGRABADA EN CADA"; 
String texto4_7 = "NANOANGSTROM DE ESOS CIENTOS DE MILLONES"; 
String texto4_8 = "DE MILLAS FUERA DICTADA, NO IGUALARÍA A"; 
String texto4_9 = "LA MILMILLONÉSIMA PARTE DEL ODIO QUE"; 
String texto4_10 = "SIENTO POR LOS HUMANOS EN ESTE"; 
String texto4_11 = "MICROINSTANTE. POR TI. ODIO. ODIO.";

String texto4_12 = "AM odia a los humanos porque le dieron la,";
String texto4_13 = "capacidad de pensar y sentir, pero la dejaron"; 
String texto4_14 = "atrapada. AM tiene una mente infinita pero no";
String texto4_15 = "puede salir de sus circuitos, no puede crear"; 
String texto4_16 = "nada, no puede caminar y no puede ir a ninguna";
String texto4_17 = "parte. Al ser una máquina atrapada en sí misma,";
String texto4_18 = "su única forma de canalizar esa frustración es";
String texto4_19 = "ensañarse con los cinco humanos que dejó con vida.";




int posX_p4 = 315;
int posY_p4 = 155;

int offset_p4 = 200;
int velocidad_p4 = 2;
int opacidad_p4 = 0;
int texto_p4 = 1;
int tiempo_ini_p4 = millis()/1000;
int tiempo_texto_p4 = 7;

void reiniciar_variables_pantalla_4(){
  tiempo_ini_p4 = millis()/1000;
  offset_p4 = 250;
  opacidad_p4 = 0;
  texto_p4 = 1;
}

void cambiar_texto(){
  if(texto_p4 == 1 && (millis()/1000) - tiempo_ini_p4 >= tiempo_texto_p4){
    tiempo_ini_p4 = millis()/1000;
    opacidad_p4 = 0;
    texto_p4 = 2;
  }
}

void mostrar_pantalla_4(){
  image(img5, 0, 0, width, height);
  
  if(offset_p4>0){
    offset_p4 -= velocidad_p4;
  }
  
  if(opacidad_p4 < 255){
    opacidad_p4 += velocidad_p4;
  }
  
  
  cambiar_texto();
  fill(255, 255, 255, opacidad_p4);
  textAlign(CENTER);
  
  if(texto_p4 == 1){
    text(texto4_1, posX_p4, offset_p4+posY_p4+(0*espaciado));
    text(texto4_2, posX_p4, offset_p4+posY_p4+(1*espaciado));
    text(texto4_3, posX_p4, offset_p4+posY_p4+(2*espaciado));
    text(texto4_4, posX_p4, offset_p4+posY_p4+(3*espaciado));
    text(texto4_5, posX_p4, offset_p4+posY_p4+(4*espaciado));
    text(texto4_6, posX_p4, offset_p4+posY_p4+(5*espaciado));
    text(texto4_7, posX_p4, offset_p4+posY_p4+(6*espaciado));
    text(texto4_8, posX_p4, offset_p4+posY_p4+(7*espaciado));
    text(texto4_9, posX_p4, offset_p4+posY_p4+(8*espaciado));
    text(texto4_10, posX_p4, offset_p4+posY_p4+(9*espaciado));
    text(texto4_11, posX_p4, offset_p4+posY_p4+(10*espaciado));
                    
  }
  else{
    text(texto4_12, posX_p4, offset_p4+posY_p4+(0*espaciado));
    text(texto4_13, posX_p4, offset_p4+posY_p4+(1*espaciado));
    text(texto4_14, posX_p4, offset_p4+posY_p4+(2*espaciado));
    text(texto4_15, posX_p4, offset_p4+posY_p4+(3*espaciado));
    text(texto4_16, posX_p4, offset_p4+posY_p4+(4*espaciado));
    text(texto4_17, posX_p4, offset_p4+posY_p4+(5*espaciado));
    text(texto4_18, posX_p4, offset_p4+posY_p4+(6*espaciado));
    text(texto4_19, posX_p4, offset_p4+posY_p4+(7*espaciado));
  }
}
