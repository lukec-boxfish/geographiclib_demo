#include <QCoreApplication>
#include <QDebug>
#include "Math.hpp"
//#include "GeographicLib/Geodesic.hpp"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString msg{"Hello world!"};
    qInfo() << msg;

    auto pi = GeographicLib::Math::pi();
    qInfo() << "Pi: " << pi;

//    const GeographicLib::Geodesic& geod = GeographicLib::Geodesic::WGS84();
//    // Distance from JFK to LHR
//    double
//        lat1 = 40.6, lon1 = -73.8, // JFK Airport
//        lat2 = 51.6, lon2 = -0.5;  // LHR Airport
//    double s12;
//    geod.Inverse(lat1, lon1, lat2, lon2, s12);
//    msg = QString("s12: ") + QString::number(s12);
//    qInfo() << msg;

    return a.exec();
}
