import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/themes.dart';
import 'package:wow_classic_raid_reset_timer/presentation/raid_list/views/raid_timer_view.dart';

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

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
      ),
    );
    return MaterialApp(
      initialRoute: '/',
      title: 'WoW Classic Raid Reset',
      navigatorKey: navigatorKey,
      theme: Themes.appTheme(context),
      routes: {
        RaidTimerScreen.route: (context) => RaidTimerScreen(),
      },
    );
  }
}
