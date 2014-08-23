/****************************************************************************
** Meta object code from reading C++ file 'fswebcam.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "fswebcam.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'fswebcam.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_FSWebCam_t {
    QByteArrayData data[8];
    char stringdata[69];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_FSWebCam_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_FSWebCam_t qt_meta_stringdata_FSWebCam = {
    {
QT_MOC_LITERAL(0, 0, 8),
QT_MOC_LITERAL(1, 9, 20),
QT_MOC_LITERAL(2, 30, 0),
QT_MOC_LITERAL(3, 31, 9),
QT_MOC_LITERAL(4, 41, 3),
QT_MOC_LITERAL(5, 45, 10),
QT_MOC_LITERAL(6, 56, 2),
QT_MOC_LITERAL(7, 59, 8)
    },
    "FSWebCam\0processCapturedImage\0\0requestId\0"
    "img\0imageSaved\0id\0fileName\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_FSWebCam[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   24,    2, 0x08,
       5,    2,   29,    2, 0x08,

 // slots: parameters
    QMetaType::Void, QMetaType::Int, QMetaType::QImage,    3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,    6,    7,

       0        // eod
};

void FSWebCam::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        FSWebCam *_t = static_cast<FSWebCam *>(_o);
        switch (_id) {
        case 0: _t->processCapturedImage((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QImage(*)>(_a[2]))); break;
        case 1: _t->imageSaved((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObject FSWebCam::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_FSWebCam.data,
      qt_meta_data_FSWebCam,  qt_static_metacall, 0, 0}
};


const QMetaObject *FSWebCam::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FSWebCam::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FSWebCam.stringdata))
        return static_cast<void*>(const_cast< FSWebCam*>(this));
    return QObject::qt_metacast(_clname);
}

int FSWebCam::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
