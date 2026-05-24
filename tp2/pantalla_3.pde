String texto3_1 = "Los cinco sobrevivientes son:";
String texto3_2 = "Gorrister: Solía ser un objetor de conciencia y un hombre";
String texto3_3 = "de acción, pero AM lo volvió indiferente y apático.";
String texto3_4 = "Benny: Era un científico apuesto, pero AM le alteró el rostro hasta";
String texto3_5 = "dejarlo con aspecto de simio, le agrandó los genitales y le destruyó";
String texto3_6 = "la cordura, dejándolo con una mentalidad infantil.";
String texto3_7 = "Nimdok: Un hombre viejo que a veces se aleja solo hacia la oscuridad y";
String texto3_8 = "regresando siempre demacrado y asustado.";
String texto3_9 = "Ellen: La única mujer del grupo, de piel negra. Ted afirma que ella se";
String texto3_10 = "acuesta con todos ellos y que AM la alteró para obsesionarla con el sexo.";
String texto3_11 = "Ted: El narrador y el más joven. Él insiste constantemente en que es el";
String texto3_12 = "único que permanece completamente cuerdo y que los otros cuatro lo odian.";

int offset_p3 = 200;
int velocidad_p3 = 5;

int opacidad_p3 = 0;
int posX_p3 = 25;
int posY_p3 = 380;

int tiempo_texto = 6;
int tiempo_ini_p3 = millis()/1000;
int personaje = 1;

void reiniciar_variables_pantalla_3(){
  tiempo_ini_p3 = millis()/1000;
  personaje = 1;
  opacidad_p3 = 0;
}

void cambiar_personaje(){
  if((millis()/1000) - tiempo_ini_p3 >= tiempo_texto){
    tiempo_ini_p3 = millis()/1000;
    opacidad_p3 = 0;
    personaje += 1;
  }
}

void mostrar_pantalla_3(){ 
  if(opacidad_p3 < 255){
    opacidad_p3 += velocidad_p3;
  }
  
  image(img4, 0, 0, width, height);
  
  //recuadro negro
  fill(0, 0, 0, 122);
  rect(0, 345, width, 200);
  
  fill(255);
  text(texto3_1, posX_p3, posY_p3+(0*espaciado));
  
  cambiar_personaje();
  fill(255, 255, 255, opacidad_p3);
  
  if(personaje == 1){
    text(texto3_2, posX_p3, posY_p3+(1*espaciado));
    text(texto3_3, posX_p3, posY_p3+(2*espaciado));
  }
  else if(personaje == 2){
    text(texto3_4, posX_p3, posY_p3+(1*espaciado));
    text(texto3_5, posX_p3, posY_p3+(2*espaciado));
    text(texto3_6, posX_p3, posY_p3+(3*espaciado));
  }
  else if(personaje == 3){
    text(texto3_7, posX_p3, posY_p3+(1*espaciado));
    text(texto3_8, posX_p3, posY_p3+(2*espaciado));
  }
  else if(personaje == 4){
    text(texto3_9, posX_p3, posY_p3+(1*espaciado));
    text(texto3_10, posX_p3, posY_p3+(2*espaciado));
  }
  else if(personaje == 5){
    text(texto3_11, posX_p3, posY_p3+(1*espaciado));
    text(texto3_12, posX_p3, posY_p3+(2*espaciado));
   }
}
