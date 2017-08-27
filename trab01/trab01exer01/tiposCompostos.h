#ifndef _DATA_H
#define _DATA_H
typedef struct {
  double x;
  double y;
}CartesianPoint;

typedef struct{
  CartesianPoint point;
  double radius;
}Circle;

#endif
