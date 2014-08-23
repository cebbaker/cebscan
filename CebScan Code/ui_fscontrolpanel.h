/********************************************************************************
** Form generated from reading UI file 'fscontrolpanel.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FSCONTROLPANEL_H
#define UI_FSCONTROLPANEL_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>
#include "qcameraviewfinder.h"

QT_BEGIN_NAMESPACE

class Ui_FSControlPanel
{
public:
    QGroupBox *groupBox;
    QPushButton *laserOnButton;
    QPushButton *laserOffButton;
    QPushButton *autoResetButton;
    QGroupBox *groupBox_2;
    QPushButton *fetchFrameButton;
    QPushButton *diffImage;
    QPushButton *GetLaserLines;
    QGroupBox *groupBox_3;
    QPushButton *stepLeftButton;
    QPushButton *stepRightButton;
    QLineEdit *degreesEdit;
    QLabel *label;
    QCameraViewfinder *viewfinder;
    QLabel *cameraLabel;
    QGroupBox *groupBox_4;
    QPushButton *stepUpButton;
    QPushButton *stepDownButton;
    QLineEdit *StepsVertical;
    QLabel *label_2;

    void setupUi(QWidget *FSControlPanel)
    {
        if (FSControlPanel->objectName().isEmpty())
            FSControlPanel->setObjectName(QStringLiteral("FSControlPanel"));
        FSControlPanel->resize(751, 485);
        FSControlPanel->setMinimumSize(QSize(580, 360));
        FSControlPanel->setMaximumSize(QSize(1580, 1360));
        FSControlPanel->setAutoFillBackground(true);
        groupBox = new QGroupBox(FSControlPanel);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        groupBox->setGeometry(QRect(10, 190, 121, 91));
        laserOnButton = new QPushButton(groupBox);
        laserOnButton->setObjectName(QStringLiteral("laserOnButton"));
        laserOnButton->setGeometry(QRect(0, 20, 61, 32));
        laserOffButton = new QPushButton(groupBox);
        laserOffButton->setObjectName(QStringLiteral("laserOffButton"));
        laserOffButton->setGeometry(QRect(60, 20, 61, 32));
        autoResetButton = new QPushButton(groupBox);
        autoResetButton->setObjectName(QStringLiteral("autoResetButton"));
        autoResetButton->setGeometry(QRect(0, 50, 121, 32));
        groupBox_2 = new QGroupBox(FSControlPanel);
        groupBox_2->setObjectName(QStringLiteral("groupBox_2"));
        groupBox_2->setGeometry(QRect(10, 280, 121, 141));
        fetchFrameButton = new QPushButton(groupBox_2);
        fetchFrameButton->setObjectName(QStringLiteral("fetchFrameButton"));
        fetchFrameButton->setGeometry(QRect(0, 40, 121, 32));
        diffImage = new QPushButton(groupBox_2);
        diffImage->setObjectName(QStringLiteral("diffImage"));
        diffImage->setGeometry(QRect(0, 70, 121, 32));
        GetLaserLines = new QPushButton(groupBox_2);
        GetLaserLines->setObjectName(QStringLiteral("GetLaserLines"));
        GetLaserLines->setGeometry(QRect(0, 100, 121, 32));
        groupBox_3 = new QGroupBox(FSControlPanel);
        groupBox_3->setObjectName(QStringLiteral("groupBox_3"));
        groupBox_3->setGeometry(QRect(10, 10, 121, 91));
        stepLeftButton = new QPushButton(groupBox_3);
        stepLeftButton->setObjectName(QStringLiteral("stepLeftButton"));
        stepLeftButton->setGeometry(QRect(10, 50, 51, 32));
        stepRightButton = new QPushButton(groupBox_3);
        stepRightButton->setObjectName(QStringLiteral("stepRightButton"));
        stepRightButton->setGeometry(QRect(60, 50, 50, 32));
        degreesEdit = new QLineEdit(groupBox_3);
        degreesEdit->setObjectName(QStringLiteral("degreesEdit"));
        degreesEdit->setGeometry(QRect(10, 30, 100, 22));
        degreesEdit->setLayoutDirection(Qt::LeftToRight);
        degreesEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        label = new QLabel(groupBox_3);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(110, 30, 10, 16));
        viewfinder = new QCameraViewfinder(FSControlPanel);
        viewfinder->setObjectName(QStringLiteral("viewfinder"));
        viewfinder->setGeometry(QRect(140, 20, 601, 451));
        viewfinder->setAutoFillBackground(false);
        viewfinder->setStyleSheet(QStringLiteral(""));
        cameraLabel = new QLabel(FSControlPanel);
        cameraLabel->setObjectName(QStringLiteral("cameraLabel"));
        cameraLabel->setGeometry(QRect(140, 20, 600, 450));
        cameraLabel->setAutoFillBackground(false);
        cameraLabel->setStyleSheet(QStringLiteral("background-color: black; color: white;"));
        cameraLabel->setFrameShape(QFrame::Box);
        groupBox_4 = new QGroupBox(FSControlPanel);
        groupBox_4->setObjectName(QStringLiteral("groupBox_4"));
        groupBox_4->setGeometry(QRect(10, 100, 121, 91));
        stepUpButton = new QPushButton(groupBox_4);
        stepUpButton->setObjectName(QStringLiteral("stepUpButton"));
        stepUpButton->setGeometry(QRect(10, 50, 51, 32));
        stepDownButton = new QPushButton(groupBox_4);
        stepDownButton->setObjectName(QStringLiteral("stepDownButton"));
        stepDownButton->setGeometry(QRect(60, 50, 50, 32));
        StepsVertical = new QLineEdit(groupBox_4);
        StepsVertical->setObjectName(QStringLiteral("StepsVertical"));
        StepsVertical->setGeometry(QRect(10, 30, 100, 22));
        StepsVertical->setLayoutDirection(Qt::LeftToRight);
        StepsVertical->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        label_2 = new QLabel(groupBox_4);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(110, 30, 10, 16));
        cameraLabel->raise();
        groupBox->raise();
        groupBox_2->raise();
        groupBox_3->raise();
        viewfinder->raise();
        groupBox_4->raise();

        retranslateUi(FSControlPanel);

        QMetaObject::connectSlotsByName(FSControlPanel);
    } // setupUi

    void retranslateUi(QWidget *FSControlPanel)
    {
        FSControlPanel->setWindowTitle(QApplication::translate("FSControlPanel", "Control Panel", 0));
        groupBox->setTitle(QApplication::translate("FSControlPanel", "Laser", 0));
        laserOnButton->setText(QApplication::translate("FSControlPanel", "On", 0));
        laserOffButton->setText(QApplication::translate("FSControlPanel", "Off", 0));
        autoResetButton->setText(QApplication::translate("FSControlPanel", "Detect Laser", 0));
        groupBox_2->setTitle(QApplication::translate("FSControlPanel", "Camera", 0));
        fetchFrameButton->setText(QApplication::translate("FSControlPanel", "Fetch Frame", 0));
        diffImage->setText(QApplication::translate("FSControlPanel", "Diff Image", 0));
        GetLaserLines->setText(QApplication::translate("FSControlPanel", "Laser Image", 0));
        groupBox_3->setTitle(QApplication::translate("FSControlPanel", "Turntable", 0));
        stepLeftButton->setText(QApplication::translate("FSControlPanel", "<", 0));
        stepRightButton->setText(QApplication::translate("FSControlPanel", ">", 0));
        degreesEdit->setText(QApplication::translate("FSControlPanel", "10", 0));
        label->setText(QApplication::translate("FSControlPanel", "                         Select a camera from the menu!", 0));
        cameraLabel->setText(QApplication::translate("FSControlPanel", "                                                Select a camera from the menu!", 0));
        groupBox_4->setTitle(QApplication::translate("FSControlPanel", "Vertical Control", 0));
        stepUpButton->setText(QApplication::translate("FSControlPanel", "Up", 0));
        stepDownButton->setText(QApplication::translate("FSControlPanel", "Down", 0));
        StepsVertical->setText(QApplication::translate("FSControlPanel", "10", 0));
        label_2->setText(QApplication::translate("FSControlPanel", "                         Select a camera from the menu!", 0));
    } // retranslateUi

};

namespace Ui {
    class FSControlPanel: public Ui_FSControlPanel {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FSCONTROLPANEL_H
