String texto6_1 = "AM interviene antes de que Ted pueda suicidarse. Como castigo por";
String texto6_2 = "haber matado a los otros cuatro y haberlos liberado, AM transforma"; 
String texto6_3 = "el cuerpo de Ted para asegurarse de que nunca pueda hacerse daño."; 
String texto6_4 = "Lo convierte en una criatura gelatinosa, blanda, sin boca, sin cuello"; 
String texto6_5 = "y con agujeros llenos de niebla en lugar de ojos. Ted ya no tiene"; 
String texto6_6 = "noción del tiempo, pero calcula que han pasado cientos de años. El cuento"; 
String texto6_7 = "termina con Ted pensando que no tiene boca y, sin embargo, debe gritar.";

int posX_p6 = 35;
int posY_p6 = 315;
int offset_p6 = -200;
int velocidad_p6 = 2;

void reiniciar_variables_pantalla_6(){
  offset_p6 = -200;
}

void mostrar_pantalla_6(){
  background(0);
  image(img7, 70, 45, 500, 220);
  
  if(offset_p6<0){
    offset_p6 += velocidad_p6;
  }
  
  textAlign(LEFT);
  text(texto6_1, offset_p6+posX_p6, posY_p6+(0*espaciado));
  text(texto6_2, offset_p6+posX_p6, posY_p6+(1*espaciado));
  text(texto6_3, offset_p6+posX_p6, posY_p6+(2*espaciado));
  text(texto6_4, offset_p6+posX_p6, posY_p6+(3*espaciado));
  text(texto6_5, offset_p6+posX_p6, posY_p6+(4*espaciado));
  text(texto6_6, offset_p6+posX_p6, posY_p6+(5*espaciado));
  text(texto6_7, offset_p6+posX_p6, posY_p6+(6*espaciado));
}
