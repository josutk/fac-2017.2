#include <stdio.h>
#include <math.h>
#include "tiposCompostos.h"



double distanceBetweenPoints(CartesianPoint a, CartesianPoint b){
  double tmpx = b.x - a.x;
  double tmpy = b.y - a.y;


  double distance = sqrt((pow(tmpx,2))+(pow(tmpy,2)));
  return distance;
}

void getPointsHypotenuse(CartesianPoint * points, CartesianPoint *poinsHypotenuse){
  double distances[3];
  distances[0] = distanceBetweenPoints(points[0],points[1]);
  distances[1] = distanceBetweenPoints(points[0],points[2]);
  distances[2] = distanceBetweenPoints(points[2],points[1]);
  int i;
  double hypotenuse = 0;
  for(i = 0 ; i<3 ;i ++){
    if(distances[i]>hypotenuse){
        hypotenuse = distances[i];
      }else{
        //nothing to do
      }
    }

    if(hypotenuse == distanceBetweenPoints(points[0],points[1])){
      poinsHypotenuse[0] = points[0];
      poinsHypotenuse[1] =  points[1];
    }else if (hypotenuse == distanceBetweenPoints(points[0],points[2])){
      poinsHypotenuse[0] = points[0];
      poinsHypotenuse[1] =  points[2];
    }else{
      poinsHypotenuse[0] = points[2];
      poinsHypotenuse[1] =  points[1];
    }
}

CartesianPoint midPoint(CartesianPoint * points){
  CartesianPoint point;

   point.x = (points[0].x + points[1].x) / 2;
   point.y = (points[0].y + points[1].y) / 2;

  return point;
}
