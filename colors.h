#ifndef COLORS_H
#define COLORS_H

#include <QObject>

class Colors : public QObject
{
    Q_OBJECT
public:
    explicit Colors(QObject *parent = nullptr);

signals:

public slots:
    QVector<QString> panel(QString button, QVector<QString> panel1);

};

#endif // COLORS_H
