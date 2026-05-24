String texto5_1 = "Nimdok dice haber tenido una visión de que hay latas de comida en";
String texto5_2 = "las cavernas de hielo, por lo que el grupo camina durante meses"; 
String texto5_3 = "sufriendo hambre extrema. Al llegar, encuentran miles de latas de"; 
String texto5_4 = "conservas, pero descubren que AM no les dio ningún abridor. Desesperado"; 
String texto5_5 = "por el hambre, Benny pierde el control y ataca a Gorrister, mordiéndole"; 
String texto5_6 = "la mejilla y tratando de comerse sus ojos. Ted comprende que la muerte"; 
String texto5_7 = "es la única salida. Ted toma una estalactita de hielo y apuñala a"; 
String texto5_8 = "Benny en el estómago. Luego apuñala a Gorrister. Ellen entiende "; 
String texto5_9 = "lo que ocurre, mata rápidamente a Nimdok y luego"; 
String texto5_10 = "se ofrece a Ted, quien la apuñala antes de que AM pueda detenerlo.";

int posX_p5 = 48;
int posY_p5 = 155;

int offset_p5 = 100;
int velocidad_p5 = 1;

void reiniciar_variables_pantalla_5(){
  offset_p5 = 100;
}

void mostrar_pantalla_5(){
  image(img6, 0, 0, width, height);
  
if(offset_p5>0){
    offset_p5 -= velocidad_p1;
  }
  
  textAlign(LEFT);
  text(texto5_1, posX_p5, offset_p5+posY_p5+(0*espaciado));
  text(texto5_2, posX_p5, offset_p5+posY_p5+(1*espaciado));
  text(texto5_3, posX_p5, offset_p5+posY_p5+(2*espaciado));
  text(texto5_4, posX_p5, offset_p5+posY_p5+(3*espaciado));
  text(texto5_5, posX_p5, offset_p5+posY_p5+(4*espaciado));
  text(texto5_6, posX_p5, offset_p5+posY_p5+(5*espaciado));
  text(texto5_7, posX_p5, offset_p5+posY_p5+(6*espaciado));
  text(texto5_8, posX_p5, offset_p5+posY_p5+(7*espaciado));
  text(texto5_9, posX_p5, offset_p5+posY_p5+(8*espaciado));
  text(texto5_10, posX_p5, offset_p5+posY_p5+(9*espaciado));
}
