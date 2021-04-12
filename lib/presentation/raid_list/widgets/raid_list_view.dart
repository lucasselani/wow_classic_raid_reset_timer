import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';
import 'package:wow_classic_raid_reset_timer/presentation/raid_list/widgets/raid_list_item.dart';

class RaidListView extends StatefulWidget {
  final List<Raid> raids;
  final ServerRegion region;

  const RaidListView({Key key, @required this.raids, @required this.region})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _RaidListState();
}

class _RaidListState extends State<RaidListView>
    with AutomaticKeepAliveClientMixin<RaidListView> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: widget.raids.length,
      itemBuilder: (context, index) => RaidListItem(
        raid: widget.raids[index],
        region: widget.region,
      ),
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Divider(
          color: Colors.white54,
        ),
      ),
      padding: const EdgeInsets.all(16),
    );
  }
}
