#ifndef FSCONTROLLER_H
#define FSCONTROLLER_H

#include "staticHeaders.h"
#include "mainwindow.h"
#include "fscontrolpanel.h"
#include "geometryengine.h"
#include "fsmodel.h"
#include "fsserial.h"
#include "fswebcam.h"
#include "csturntable.h"
#include "cslaser.h"
#include "csvision.h"
#include "csvertical.h"
#include "fsconfiguration.h"

class GeometryEngine;
class FSModel;
class FSController;
/*class FSSerial;
class FSWebCam;
class MainWindow;
class FSLaser;*/

class FSController
{
    private:
        static FSController* singleton;
        FSController();

    public:
        MainWindow* mainwindow;
        FSControlPanel* controlPanel;
        GeometryEngine* geometries;
        FSModel* model;
        FSSerial* serial;
        FSWebCam* webcam;
        CSTurntable* turntable;
        CSLaser* laser;
        CSVision* vision;
        CSVertical* vertical;

        static FSConfiguration* config;

        //Singleton Pattern
        static FSController* getInstance();
        static void destroy();

        //FabScan Functionality
        void fetchFrame();
        void hideFrame();

        void scan();
        void scanThread();
        void scanThread2();
        bool detectLaserLine();
        void computeSurfaceMesh();
        cv::Mat diffImage();

        bool scanning; //wether we are scanning or not, used to interrupt scanning
        bool meshComputed; //wether the surface meshhas already been computed from the point cloud or not
        double laserSwipeMin;
        double laserSwipeMax;
        double laserStepSize;
        double turntableStepSize;
        double yDpi;
};

#endif // FSCONTROLLER_H
