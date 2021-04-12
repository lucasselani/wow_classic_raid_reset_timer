import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/core/base/view/base_view.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/colors.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/styles.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/character.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';

import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';
import 'package:wow_classic_raid_reset_timer/core/presentation/app_scaffold.dart';
import 'package:wow_classic_raid_reset_timer/presentation/raid_list/views/raid_timer_view_model.dart';
import 'package:wow_classic_raid_reset_timer/presentation/raid_list/widgets/raid_list_view.dart';

class RaidTimerScreen extends BaseView<RaidTimerViewModel> {
  static const route = '/';

  @override
  Widget builder(
          BuildContext context, RaidTimerViewModel viewModel, Widget child) =>
      AppScaffold(
        tabBar: TabBar(
          controller: viewModel.tabController,
          tabs: [
            _createTabItem('US'),
            _createTabItem('EU'),
          ],
          onTap: (index) {
            viewModel.index = index;
            viewModel.pageController.animateToPage(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn);
          },
        ),
        body: child,
        title: 'Raid Timers',
      );

  @override
  Widget child(BuildContext context, RaidTimerViewModel viewModel) {
    return PageView(
      controller: viewModel.pageController,
      physics: BouncingScrollPhysics(),
      onPageChanged: (index) {
        viewModel.index = index;
        viewModel.tabController.index = index;
      },
      children: [
        RaidListView(
          raids: viewModel.regionRaid(ServerRegion.US),
          region: ServerRegion.US,
        ),
        RaidListView(
          raids: viewModel.regionRaid(ServerRegion.EU),
          region: ServerRegion.EU,
        ),
      ],
    );
  }

  @override
  RaidTimerViewModel providerCreator(BuildContext context) =>
      RaidTimerViewModel();

  Widget _createTabItem(String text) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: Styles.title,
        ),
      );
}
