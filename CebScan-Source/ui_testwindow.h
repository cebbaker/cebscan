/********************************************************************************
** Form generated from reading UI file 'testwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TESTWINDOW_H
#define UI_TESTWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_testWindow
{
public:
    QWidget *centralWidget;
    QLabel *label;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *testWindow)
    {
        if (testWindow->objectName().isEmpty())
            testWindow->setObjectName(QStringLiteral("testWindow"));
        testWindow->resize(400, 300);
        centralWidget = new QWidget(testWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        label = new QLabel(centralWidget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(150, 110, 57, 15));
        testWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(testWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 400, 20));
        testWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(testWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        testWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(testWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        testWindow->setStatusBar(statusBar);

        retranslateUi(testWindow);

        QMetaObject::connectSlotsByName(testWindow);
    } // setupUi

    void retranslateUi(QMainWindow *testWindow)
    {
        testWindow->setWindowTitle(QApplication::translate("testWindow", "testWindow", 0));
        label->setText(QApplication::translate("testWindow", "this worked", 0));
    } // retranslateUi

};

namespace Ui {
    class testWindow: public Ui_testWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TESTWINDOW_H
