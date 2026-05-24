String texto2_1 = "AM es el nombre de la computadora gigante. Originalmente las siglas";
String texto2_2 = "significaban Allied Mastercomputer (Computadora Maestra Aliada), luego";
String texto2_3 = "Adaptive Manipulator (Manipulador Adaptativo) y finalmente se llamó AM,";
String texto2_4 = " asociándolo con la frase en latín 'Cogito, ergo sum'(Pienso, luego";
String texto2_5 = "existo). Controla todo el entorno subterráneo: puede cambiar el clima,";
String texto2_6 = "crear monstruos, teletransportar objetos y alterar los cuerpos de los";
String texto2_7 = "humanos para mantenerlos vivos y torturarlos.";

int offset_p2 = 200;
int velocidad_p2 = 2;

int posX_p2 = 40;
int posY_p2 = 320;

void reiniciar_variables_pantalla_2(){
  offset_p2 = 200;
}

void mostrar_pantalla_2(){ 
  if(offset_p2>0){
    offset_p2 -= velocidad_p2;
  }
  
  image(img2, 0, 0, width, height);
  
  image(img3, 157, 28, width/2, height/2);
  
    //recuadro negro
  fill(0, 0, 0, 122);
  rect(0, 280, width, 200);
  
  fill(255);
  text(texto2_1, posX_p2+offset_p2, posY_p2+(0*espaciado));
  text(texto2_2, posX_p2+offset_p2, posY_p2+(1*espaciado));
  text(texto2_3, posX_p2+offset_p2, posY_p2+(2*espaciado));
  text(texto2_4, posX_p2+offset_p2, posY_p2+(3*espaciado));
  text(texto2_5, posX_p2+offset_p2, posY_p2+(4*espaciado));
  text(texto2_6, posX_p2+offset_p2, posY_p2+(5*espaciado));
  text(texto2_7, posX_p2+offset_p2, posY_p2+(6*espaciado));
}
