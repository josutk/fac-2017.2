#ifndef _GEOMETRIC_OPERATIONS
#define _GEOMETRIC_OPERATIONS
#include "tiposCompostos.h"

double distanceBetweenPoints(CartesianPoint a, CartesianPoint b);
void getPointsHypotenuse(CartesianPoint * points, CartesianPoint *pointsHypotenuse);
CartesianPoint midPoint(CartesianPoint * points);
#endif
