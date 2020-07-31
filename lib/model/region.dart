import 'package:flutter/foundation.dart';

enum ServerRegion {
  US,
  EU,
}

class Region {
  DateTime timestamp;

  Region({@required this.timestamp});
}
