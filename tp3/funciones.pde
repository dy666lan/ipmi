//funcion que toma parametro y NO devuelve valor
void mover_dibujo(boolean dentro_de_dibujo){
  if(dentro_de_dibujo){
    mover_x = map(mouseX, width/2, width, -70, 70);
    mover_y = map(mouseY, 0, height, -70, 70);
  }
  translate(mover_x, mover_y);
}

void resetear_variables(){
  offset_random_angulo = 0;
  angulo = angulo_original;
  
  largo_cruzada = largo_cruzada_original;
  offset_largo_cruzada = 0;
  
  offset_random_1 = 0;
  offset_random_2 = 0;
  offset_cruzada1 = offset_cruzada1_original;
  offset_cruzada2 = offset_cruzada2_original;
  
  mover_x = 0;
  mover_y = 0;
}

void randomizar_offset(){
  offset_largo_cruzada = random(-5, 5);
  offset_random_angulo = random(0, 32);
  offset_random_1 = random(-15, 15);
  offset_random_2 = random(-15, 15);
}

// funciones que toman parametros y retornan un valor
boolean en_obra_original(int x, int y){
  // me dice si el (x, y) esta en el espacio que ocupa la obra original
  if(x >=0 && x <= width/2 && y >= 0 && y <= height){
    return true;
  }
  else{
    return false;
  }
}

boolean iguales_aprox(float num1, float num2){
  if(num1 <= num2){
    if(num2-num1 <= margen){
      return true;
    }
    else{
      return false;
    }
  }
  else{
    if(num1-num2 <= margen){
      return true;
    }
    else{
      return false;
    }
  }
}

boolean es_impar(int num){
  if(num%2==1){
    return true;
  }
  else{
    return false;
  }
}

float aproximar_valor(float valor, float objetivo, float velocidad){
  if(iguales_aprox(valor, objetivo)){
    valor = objetivo;
  }
  else if(valor<objetivo){
    valor += velocidad;
  }
  else if(valor>objetivo){
    valor -= velocidad;
  }
  
  return valor;
}
