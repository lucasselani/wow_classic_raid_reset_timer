import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/core/base/view/base_view_model.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/aq_20.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/aq_40.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/blackwing_lair.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/molten_core.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/naxxramas.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/onyxias_lair.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raids/zul_gurub.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';
import 'package:wow_classic_raid_reset_timer/main.dart';

class RaidTimerViewModel extends BaseViewModel {
  final List<Raid> _raids = [
    MoltenCore(),
    BlackwingLair(),
    OnyxiasLair(),
    ZulGurub(),
    AQ20(),
    AQ40(),
    Naxxramas(),
  ];
  List<Raid> regionRaid(ServerRegion region) {
    final raids = [..._raids];
    raids.sort(
      (Raid previous, Raid next) =>
          previous.expireDate(region).compareTo(next.expireDate(region)),
    );
    return raids;
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
    notifyListeners();
  }

  final PageController pageController = PageController();
  final TabController tabController =
      TabController(length: 2, vsync: navigatorKey.currentState);
}
