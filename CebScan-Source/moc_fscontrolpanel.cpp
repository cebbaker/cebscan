/****************************************************************************
** Meta object code from reading C++ file 'fscontrolpanel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "fscontrolpanel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'fscontrolpanel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_FSControlPanel_t {
    QByteArrayData data[18];
    char stringdata[438];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_FSControlPanel_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_FSControlPanel_t qt_meta_stringdata_FSControlPanel = {
    {
QT_MOC_LITERAL(0, 0, 14),
QT_MOC_LITERAL(1, 15, 27),
QT_MOC_LITERAL(2, 43, 0),
QT_MOC_LITERAL(3, 44, 24),
QT_MOC_LITERAL(4, 69, 25),
QT_MOC_LITERAL(5, 95, 25),
QT_MOC_LITERAL(6, 121, 26),
QT_MOC_LITERAL(7, 148, 23),
QT_MOC_LITERAL(8, 172, 25),
QT_MOC_LITERAL(9, 198, 26),
QT_MOC_LITERAL(10, 225, 27),
QT_MOC_LITERAL(11, 253, 4),
QT_MOC_LITERAL(12, 258, 30),
QT_MOC_LITERAL(13, 289, 31),
QT_MOC_LITERAL(14, 321, 20),
QT_MOC_LITERAL(15, 342, 34),
QT_MOC_LITERAL(16, 377, 34),
QT_MOC_LITERAL(17, 412, 24)
    },
    "FSControlPanel\0on_fetchFrameButton_clicked\0"
    "\0on_laserOnButton_clicked\0"
    "on_laserOffButton_clicked\0"
    "on_stepLeftButton_clicked\0"
    "on_stepRightButton_clicked\0"
    "on_stepUpButton_clicked\0"
    "on_stepDownButton_clicked\0"
    "on_autoResetButton_clicked\0"
    "on_laserEnable_stateChanged\0arg1\0"
    "on_laserStepLeftButton_clicked\0"
    "on_laserStepRightButton_clicked\0"
    "on_diffImage_clicked\0"
    "on_laserSwipeMaxEdit_returnPressed\0"
    "on_laserSwipeMinEdit_returnPressed\0"
    "on_GetLaserLines_clicked\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_FSControlPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   89,    2, 0x08,
       3,    0,   90,    2, 0x08,
       4,    0,   91,    2, 0x08,
       5,    0,   92,    2, 0x08,
       6,    0,   93,    2, 0x08,
       7,    0,   94,    2, 0x08,
       8,    0,   95,    2, 0x08,
       9,    0,   96,    2, 0x08,
      10,    1,   97,    2, 0x08,
      12,    0,  100,    2, 0x08,
      13,    0,  101,    2, 0x08,
      14,    0,  102,    2, 0x08,
      15,    0,  103,    2, 0x08,
      16,    0,  104,    2, 0x08,
      17,    0,  105,    2, 0x08,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void FSControlPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        FSControlPanel *_t = static_cast<FSControlPanel *>(_o);
        switch (_id) {
        case 0: _t->on_fetchFrameButton_clicked(); break;
        case 1: _t->on_laserOnButton_clicked(); break;
        case 2: _t->on_laserOffButton_clicked(); break;
        case 3: _t->on_stepLeftButton_clicked(); break;
        case 4: _t->on_stepRightButton_clicked(); break;
        case 5: _t->on_stepUpButton_clicked(); break;
        case 6: _t->on_stepDownButton_clicked(); break;
        case 7: _t->on_autoResetButton_clicked(); break;
        case 8: _t->on_laserEnable_stateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->on_laserStepLeftButton_clicked(); break;
        case 10: _t->on_laserStepRightButton_clicked(); break;
        case 11: _t->on_diffImage_clicked(); break;
        case 12: _t->on_laserSwipeMaxEdit_returnPressed(); break;
        case 13: _t->on_laserSwipeMinEdit_returnPressed(); break;
        case 14: _t->on_GetLaserLines_clicked(); break;
        default: ;
        }
    }
}

const QMetaObject FSControlPanel::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_FSControlPanel.data,
      qt_meta_data_FSControlPanel,  qt_static_metacall, 0, 0}
};


const QMetaObject *FSControlPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FSControlPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FSControlPanel.stringdata))
        return static_cast<void*>(const_cast< FSControlPanel*>(this));
    return QDialog::qt_metacast(_clname);
}

int FSControlPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 15)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 15;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
