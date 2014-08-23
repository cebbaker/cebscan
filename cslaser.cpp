#include "cslaser.h"
#include "fscontroller.h"
#include "fsserial.h"
#include <math.h>

// Modify to manage Laser for CEBScan

CSLaser::CSLaser()
{
    laserPointPosition = FSMakePoint(14.0f, 0.0f, 0.0f);
    position = FSMakePoint(
                    FSController::config->LASER_POS_X,
                    FSController::config->LASER_POS_Y,
                    FSController::config->LASER_POS_Z);
}


void CSLaser::turnOn()
{
    FSController::getInstance()->serial->writeChar(MC_TURN_LASER_ON);
}

void CSLaser::turnOff()
{
    FSController::getInstance()->serial->writeChar(MC_TURN_LASER_OFF);
}

FSPoint CSLaser::getLaserPointPosition(void)
{
    return laserPointPosition;
}

FSPoint CSLaser::getPosition()
{
    return position;
}

void CSLaser::selectStepper()
{
    char c[2];
    c[0] = MC_SELECT_STEPPER;
    c[1] = MC_LASER_STEPPER;
    FSController::getInstance()->serial->writeChars(c);
}

void CSLaser::setLaserPointPosition(FSPoint p)
{
    laserPointPosition = p;
}
