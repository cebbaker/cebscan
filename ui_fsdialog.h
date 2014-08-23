/********************************************************************************
** Form generated from reading UI file 'fsdialog.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FSDIALOG_H
#define UI_FSDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_FSDialog
{
public:
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *FSDialog)
    {
        if (FSDialog->objectName().isEmpty())
            FSDialog->setObjectName(QStringLiteral("FSDialog"));
        FSDialog->resize(390, 127);
        verticalLayoutWidget = new QWidget(FSDialog);
        verticalLayoutWidget->setObjectName(QStringLiteral("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(10, 9, 371, 111));
        verticalLayout = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(verticalLayoutWidget);
        label->setObjectName(QStringLiteral("label"));
        label->setScaledContents(true);
        label->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignTop);
        label->setWordWrap(true);

        verticalLayout->addWidget(label);

        buttonBox = new QDialogButtonBox(verticalLayoutWidget);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        verticalLayout->addWidget(buttonBox);


        retranslateUi(FSDialog);
        QObject::connect(buttonBox, SIGNAL(accepted()), FSDialog, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), FSDialog, SLOT(reject()));

        QMetaObject::connectSlotsByName(FSDialog);
    } // setupUi

    void retranslateUi(QDialog *FSDialog)
    {
        FSDialog->setWindowTitle(QString());
        label->setText(QApplication::translate("FSDialog", "TextLabel", 0));
    } // retranslateUi

};

namespace Ui {
    class FSDialog: public Ui_FSDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FSDIALOG_H
