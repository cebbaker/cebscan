/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "mainwidget.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionPort1;
    QAction *actionOpenPointCloud;
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout;
    MainWidget *widget;
    QFrame *line;
    QHBoxLayout *horizontalLayout;
    QSpacerItem *horizontalSpacer_3;
    QSpacerItem *horizontalSpacer_4;
    QPushButton *scanButton;
    QSpacerItem *horizontalSpacer;
    QLabel *label;
    QComboBox *resolutionComboBox;
    QMenuBar *menuBar;
    QMenu *menuSerialPort;
    QMenu *menuCamera;
    QMenu *menuFile;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(622, 513);
        MainWindow->setAutoFillBackground(false);
        MainWindow->setStyleSheet(QStringLiteral(""));
        actionPort1 = new QAction(MainWindow);
        actionPort1->setObjectName(QStringLiteral("actionPort1"));
        actionOpenPointCloud = new QAction(MainWindow);
        actionOpenPointCloud->setObjectName(QStringLiteral("actionOpenPointCloud"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        verticalLayout = new QVBoxLayout(centralWidget);
        verticalLayout->setSpacing(1);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        widget = new MainWidget(centralWidget);
        widget->setObjectName(QStringLiteral("widget"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(widget->sizePolicy().hasHeightForWidth());
        widget->setSizePolicy(sizePolicy);
        widget->setCursor(QCursor(Qt::OpenHandCursor));
        widget->setAutoFillBackground(false);
        widget->setStyleSheet(QStringLiteral("border: 1px solid black"));

        verticalLayout->addWidget(widget);

        line = new QFrame(centralWidget);
        line->setObjectName(QStringLiteral("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(-1);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(17, 15, 17, 18);
        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_3);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_4);

        scanButton = new QPushButton(centralWidget);
        scanButton->setObjectName(QStringLiteral("scanButton"));
        scanButton->setFocusPolicy(Qt::StrongFocus);
        scanButton->setDefault(true);

        horizontalLayout->addWidget(scanButton);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        label = new QLabel(centralWidget);
        label->setObjectName(QStringLiteral("label"));

        horizontalLayout->addWidget(label);

        resolutionComboBox = new QComboBox(centralWidget);
        resolutionComboBox->setObjectName(QStringLiteral("resolutionComboBox"));
        resolutionComboBox->setFocusPolicy(Qt::TabFocus);

        horizontalLayout->addWidget(resolutionComboBox);


        verticalLayout->addLayout(horizontalLayout);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 622, 22));
        menuBar->setDefaultUp(true);
        menuSerialPort = new QMenu(menuBar);
        menuSerialPort->setObjectName(QStringLiteral("menuSerialPort"));
        menuCamera = new QMenu(menuBar);
        menuCamera->setObjectName(QStringLiteral("menuCamera"));
        menuFile = new QMenu(menuBar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        MainWindow->setMenuBar(menuBar);

        menuBar->addAction(menuFile->menuAction());
        menuBar->addAction(menuSerialPort->menuAction());
        menuBar->addAction(menuCamera->menuAction());
        menuSerialPort->addAction(actionPort1);

        retranslateUi(MainWindow);

        resolutionComboBox->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "FabScan", 0));
        actionPort1->setText(QApplication::translate("MainWindow", "blablabla", 0));
        actionOpenPointCloud->setText(QApplication::translate("MainWindow", "Open PointCloud...", 0));
        scanButton->setText(QApplication::translate("MainWindow", "Start Scan", 0));
        label->setText(QApplication::translate("MainWindow", "Resolution ", 0));
        resolutionComboBox->clear();
        resolutionComboBox->insertItems(0, QStringList()
         << QApplication::translate("MainWindow", "Best", 0)
         << QApplication::translate("MainWindow", "Good", 0)
         << QApplication::translate("MainWindow", "Normal", 0)
         << QApplication::translate("MainWindow", "Poor", 0)
        );
        resolutionComboBox->setCurrentText(QApplication::translate("MainWindow", "Good", 0));
        menuSerialPort->setTitle(QApplication::translate("MainWindow", "SerialPort", 0));
        menuCamera->setTitle(QApplication::translate("MainWindow", "Camera", 0));
        menuFile->setTitle(QApplication::translate("MainWindow", "File", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
