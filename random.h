#ifndef RANDOM_H
#define RANDOM_H

#include <QObject>
#include <QVector>
#include <QRandomGenerator>

class Random : public QObject
{
    Q_OBJECT
public:
    explicit Random(QObject *parent = nullptr);

signals:

public slots:
    QVector<QString> newgrad();
    QString random(int number);

};

#endif // RANDOM_H
