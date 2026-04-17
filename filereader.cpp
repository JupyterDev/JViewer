#include "filereader.h"
#include <QFile>
#include <QTextStream>
#include <QUrl>

FileReader::FileReader(QObject *parent) : QObject(parent) {}

QString FileReader::readFile(const QString &filePath)
{
    QString path = QUrl(filePath).toLocalFile();
    QFile file(path);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return "Failed to open file.";

    QTextStream in(&file);
    return in.readAll();
}
