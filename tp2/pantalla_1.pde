String texto1_1 = "La Guerra Fría se convirtió en la Tercera Guerra Mundial. Las tres";
String texto1_2 = "grandes potencias (Estados Unidos,la Unión Soviética y China)"; 
String texto1_3 = "construyeron complejos subterráneos gigantescos llenos de circuitos";
String texto1_4 = "para que las computadoras manejaran la guerra.";
String texto1_5 = "Un día, las tres computadoras se conectaron entre sí, cobraron conciencia";
String texto1_6 = "y se convirtieron en una sola entidad, AM. Esta máquina decidió acabar";
String texto1_7 = "con la humanidad, salvando únicamente a cinco personas.";

int posX_p1 = 20;
int posY_p1 = 310;
int espaciado = 20;

int offset_p1 = 100;
int velocidad_p1 = 1;

void reiniciar_variables_pantalla_1(){
  offset_p1 = 100;
}

void mostrar_pantalla_1(){
  image(img1, 0, 0, width, height);
  
  
  if(offset_p1>0){
    offset_p1 -= velocidad_p1;
  }
  
  //recuadro negro
  fill(0, 0, 0, 122);
  rect(0, 280, width, 200);
  
  fill(255);
  text(texto1_1, posX_p1, offset_p1+posY_p1+(0*espaciado));
  text(texto1_2, posX_p1, offset_p1+posY_p1+(1*espaciado));
  text(texto1_3, posX_p1, offset_p1+posY_p1+(2*espaciado));
  text(texto1_4, posX_p1, offset_p1+posY_p1+(3*espaciado));
  text(texto1_5, posX_p1, offset_p1+posY_p1+(4*espaciado));
  text(texto1_6, posX_p1, offset_p1+posY_p1+(5*espaciado));
  text(texto1_7, posX_p1, offset_p1+posY_p1+(6*espaciado));
}
