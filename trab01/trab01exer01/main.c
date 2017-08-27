#include <stdlib.h>
#include <stdio.h>
#include "entradaSaida.h"
#include "operacaoGeometrica.h"

int main (){

  CartesianPoint p;
  double x,y;
  int i;
  CartesianPoint points[3];
  double f;

  menu();
  for( i = 0 ; i< 3 ; i++){
    p = readPoint(x,y);
    points[i] = p;
  }


    CartesianPoint h[2];
    getPointsHypotenuse(points,h);


    CartesianPoint aux;
    aux = midPoint(h);

    f = distanceBetweenPoints(aux,points[0]);
    Circle circle;
    circle.radius = f;
    circle.point.x = aux.x;
    circle.point.x = aux.y;

    if(circle.radius !=0){
      showResult(circle);
    }else{
      notAcircleMessage();

    }



  return 0;
}
