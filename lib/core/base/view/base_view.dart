import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wow_classic_raid_reset_timer/core/base/view/base_view_model.dart';

abstract class BaseView<T extends BaseViewModel> extends StatefulWidget {
  BaseView({Key key}) : super(key: key);

  Widget child(BuildContext context, T viewModel) => null;

  void initState(BuildContext context, T viewModel) {}

  bool get wantKeepAlive => false;

  T providerCreator(BuildContext context);

  Widget builder(BuildContext context, T viewModel, Widget child);

  @override
  State<StatefulWidget> createState() => BaseState<T, BaseView>();
}

class BaseState<T extends BaseViewModel, W extends BaseView> extends State<W>
    with AutomaticKeepAliveClientMixin {
  T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.providerCreator(context);
    widget.initState(context, viewModel);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider<T>(
        create: (BuildContext innerContext) => viewModel,
        child: Consumer<T>(
          builder: widget.builder,
          child: widget.child(context, viewModel),
        ));
  }

  @override
  bool get wantKeepAlive => widget.wantKeepAlive;
}
