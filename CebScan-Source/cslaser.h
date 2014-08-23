// Modified for CEBScan f


#ifndef CSLASER_H
#define CSLASER_H

#include "staticHeaders.h"

class CSLaser
{
  private:
     FSPoint laserPointPosition; //where the laser points on the backplane
     FSPoint position;
public:
    CSLaser();

    void turnOn();
    void turnOff();
    FSPoint getLaserPointPosition(void);
    void setLaserPointPosition(FSPoint p);


    FSPoint getPosition(void);
    void selectStepper();

};

#endif // CSLASER_H
