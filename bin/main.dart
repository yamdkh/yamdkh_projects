import '../util/logger.dart';

void main() {


  AppLogger.initLogger();
  AppLogger.logEvent("User login");
  AppLogger.logEvent("Crash When User try login");
  AppLogger.logEvent("App Killed");
  AppLogger.closeLogger();


}
