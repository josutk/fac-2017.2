#include <stdio.h>
#include <stdlib.h>
#include "tiposCompostos.h"

CartesianPoint readPoint(double x , double y ){
  CartesianPoint point;
  scanf("%lf",&x);
  scanf("%lf",&y);
  point.x = x;
  point.y = y;
  return point;
}


void showResult(Circle circle){
  printf("Raio: %.3lf\n",circle.radius );
  printf("Centro: (%.3lf, %.3lf).\n",circle.point.x, circle.point.x);
}

void notAcircleMessage(){
  printf("Circulo nao viavel.\n");
}

void menu(){
  printf(">>>>>>>>>>>>>>Menu<<<<<<<<<<<<\n");
  printf("\tInsira 3 pontos desejados\n");
}
