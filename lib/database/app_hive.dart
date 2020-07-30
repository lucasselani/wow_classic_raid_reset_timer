import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AppHive {
  static void initialize() async {
    try {
      var appDocumentDir = await getApplicationDocumentsDirectory();
      await Hive.init(appDocumentDir.path);
    } on MissingPluginException catch (_) {
      await Hive.init('.shape_db');
    }
  }
}
