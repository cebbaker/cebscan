#-------------------------------------------------
#
# Project created by QtCreator 2012-09-17T22:38:59
#
#-------------------------------------------------

QT += core gui opengl multimedia xml widgets
CONFIG += static noframework console

QT += multimedia multimediawidgets


CONFIG += extserialport

TARGET = FabScan100
TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp \
    geometryengine.cpp \
    mainwidget.cpp \
    fscontroller.cpp \
    fsmodel.cpp \
    fsserial.cpp \
    fsdialog.cpp \
    fscontrolpanel.cpp \
    fswebcam.cpp \
    fsconfiguration.cpp \
    testwindow.cpp \
    cslaser.cpp \
    csturntable.cpp \
    csvertical.cpp \
    csvision.cpp \

HEADERS += mainwindow.h \
           geometryengine.h \
            mainwidget.h \
            fscontroller.h \
            fsmodel.h \
            staticHeaders.h \
            fsserial.h \
            fswebcam.h \
            fsdialog.h \
            fscontrolpanel.h \
            fsdefines.h \
            fsgeometries.h \
            fsconfiguration.h \
            testwindow.h \
            cslaser.h \
            csturntable.h \
            csvertical.h \
            csvision.h


FORMS    += mainwindow.ui \
    fsdialog.ui \
    fscontrolpanel.ui \
 testwindow.ui

OTHER_FILES += \
    fshader.glsl \
    vshader.glsl

RESOURCES += \
    shaders.qrc \
    textures.qrc



linux-g++ {
    message("Buildng for Linux.")

   INCLUDEPATH += /usr/include/boost/

    LIBS += -L/usr/lib/ \
     -lboost_system \
     -lboost_filesystem \

    DEFINES += LINUX

    INCLUDEPATH += /home/ceb/cebscan/CebScan/eigen/
    INCLUDEPATH += /usr/include/boost/
   # INCLUDEPATH += /home/ceb/cebscan/CebScan/qextserialport-1.2rc/  #CEB Added
    INCLUDEPATH += ../cebscan/CebScan/


#include(/home/ceb/cebscan/CebScan/qextserialport-1.2rc/src/qextserialport.pri)
# CEB added
   # LIBS += -L/home/ceb/cebscan/CebScan/qextserialport-1.2rc \
   # -lQt5ExtSerialPort \

  # QMAKE_LIBDIR += /home/ceb/cebscan/CebScan/qextserialport-1.2rc


   LIBS += -L/home/ceb/cebscan/CebScan/opencv-build/lib  \
    -lopencv_core \
    -lopencv_highgui \
    -lopencv_imgproc \
    -lopencv_features2d \
    -lopencv_calib3d




   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/common/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1-build/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/io/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/release/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/kdtree/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/features/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/search/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/octree/include
   INCLUDEPATH += /home/ceb/cebscan/CebScan/pcl-pcl-1.7.1/surface/include

LIBS += -L/home/ceb/cebscan/CebScan/pcl-pcl-1.7.1-build/lib \
    -lpcl_common \
    -lpcl_io \
    -lpcl_io_ply \
    -lpcl_sample_consensus \
    -lpcl_octree \
    -lpcl_filters \
    -lpcl_kdtree \
    -lpcl_registration \
    -lpcl_features \
    -lpcl_segmentation \
    -lpcl_surface \
    -lpcl_search




}



