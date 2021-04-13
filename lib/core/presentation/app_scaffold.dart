import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/colors.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/styles.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final Widget tabBar;
  final String title;

  const AppScaffold({
    Key key,
    @required this.body,
    @required this.title,
    @required this.tabBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(),
        backgroundColor: AppColors.backgroundColor,
        resizeToAvoidBottomInset: false,
        body: body,
      );

  Widget _buildAppBar() => AppBar(
        toolbarHeight: 90,
        elevation: 4,
        bottom: tabBar,
        backgroundColor: AppColors.elavatedItemColor,
        centerTitle: true,
        title: Text(
          title,
          style: Styles.title,
        ),
      );
}
