#include "random.h"

Random::Random(QObject *parent) : QObject(parent)
{

}

QVector<QString> Random::newgrad() {
    QVector<QString> color;
    color.push_back(random(4));
    if (color.value(0) == "white") {
        color.push_back("white");
        color.push_back("17");
        return color;
    }
again:
    QString grad = random(4);
    if (grad != color.value(0)) color.push_back(grad);
    else goto again;
    if (color[1] == "white") {
        if (color[0] == "blue") color.push_back("3");
        if (color[0] == "violet") color.push_back("21");
        if (color[0] == "orange") color.push_back("27");
    }
    if (color[0] == "blue") {
        if (color[1] == "violet") color.push_back("15");
        if (color[1] == "orange") color.push_back("19");
    }
    if (color[0] == "violet") {
        if (color[1] == "blue") color.push_back("9");
        if (color[1] == "orange") color.push_back("25");
    }
    if (color[0] == "orange") {
        if (color[1] == "violet") color.push_back("23");
        if (color[1] == "blue") color.push_back("11");
    }
    return color;
}

QString Random::random(int number) {
    QRandomGenerator *qrg = QRandomGenerator::global();
    int rg = qrg->bounded(number);
    if (rg == 0) {
        return "blue";
    }
    if (rg == 1) {
        return "violet";
    }
    if (rg == 2) {
        return "orange";
    }
    if (rg == 3) {
        return "white";
    }
    return "black";
}
