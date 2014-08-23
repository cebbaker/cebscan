
//#include <QtWidgets>
#include <QApplication>
#include <QtWidgets/QWidget>
//#include <QLabel>
#include <sys/resource.h>  // ceb added

#include "mainwindow.h"

//#include "testwindow.h"


int main(int argc, char *argv[])
{

    int cat = 1;

    cat++;

    const rlim_t kStackSize = 32L * 1024L * 1024L;   // min stack size = 32 Mb
    struct rlimit rl;
    int result;

    result = getrlimit(RLIMIT_STACK, &rl);
    if (result == 0)
    {
        if (rl.rlim_cur < kStackSize)
        {
            rl.rlim_cur = kStackSize;
            result = setrlimit(RLIMIT_STACK, &rl);
            if (result != 0)
            {
                fprintf(stderr, "setrlimit returned result = %d\n", result);
            }
        }
    }




    QApplication a(argc, argv);
    MainWindow w;
   // testWindow w;
    w.show();

    return a.exec();

}
