import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wow_classic_raid_reset_timer/presentation/screen/raid_timer_screen.dart';
import 'package:wow_classic_raid_reset_timer/resources/themes.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        initialRoute: '/',
        title: 'WoW Classic Raid Reset',
        theme: Themes.appTheme(context),
        routes: {
          '/': (context) => RaidTimerScreen(),
        },
      );
}
