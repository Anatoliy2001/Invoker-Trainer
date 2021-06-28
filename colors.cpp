#include "colors.h"

Colors::Colors(QObject *parent) : QObject(parent)
{

}

QVector<QString> Colors::panel(QString button, QVector<QString> panel1) {
    QVector<QString> panel;
        panel.push_back(panel1.value(1));
        panel.push_back(panel1.value(2));
        if (button == "q") panel.push_back("blue");
        else if (button == "w") panel.push_back("violet");
        else if (button == "e") panel.push_back("orange");
    return panel;
}
