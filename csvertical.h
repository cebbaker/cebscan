#ifndef CSVERTICAL_H
#define CSVERTICAL_H

#include "staticHeaders.h"
#include "fsserial.h"

class CSVertical
{
private:
    double direction; //in which direction Up or Down
    FSPoint rotation; //the current rotation of the turntable

public:
    double degreesPerStep; //the stepper performs step of a certain number of degrees

    CSVertical();
    void turnNumberOfSteps(unsigned int steps); //tell movement certain number of steps
    void setDirection(FSDirection direction);   //set the direction Up or Down
    void toggleDirection();                     //change the direction
    void setRotation(FSPoint r);                //set the current rotation
    FSPoint getRotation(void);                  //get the current rotation
    void selectStepper();
    void enable(void);                          //enable vertical (enable the stepper engine)
    void disable(void);                         //disable vertical (disable the stepper engine)
};

#endif // CSVERTICAL_H
