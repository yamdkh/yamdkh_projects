import 'dart:io';

class AppLogger {
  static File? logFile;

  static initLogger(){
    logFile = File(_getFileName());
    logFile?.createSync();
    logFile?.writeAsStringSync('----Event Start----\n', mode: FileMode.append);
  }
  static closeLogger() {
    logFile?.writeAsStringSync('----Event End----\n', mode: FileMode.append);
  }

  static logEvent(String log) {
    final logWithTime = """\nTime:${DateTime.now()}
Log: $log\n
""";
    logFile?.writeAsStringSync("$logWithTime", mode: FileMode.append);
  }

  static String _getFileName() {
    final date = DateTime.now();
    return "log/${date.year}_${date.month}_${date.day}_h${date.hour}.txt";
  }
}
