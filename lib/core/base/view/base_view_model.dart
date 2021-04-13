import 'package:flutter/foundation.dart';
import 'package:wow_classic_raid_reset_timer/core/base/functional/failure.dart';
import 'package:wow_classic_raid_reset_timer/core/base/functional/view_state.dart';

class BaseViewModel with ChangeNotifier {
  ViewState _state = SuccessState();
  ViewState get state => _state;
  bool _mounted = true;
  bool get mounted => _mounted;

  void setLoadingState() => _setState(LoadingState());

  void setSuccessState() => _setState(SuccessState());

  void setErrorState({Failure failure}) =>
      _setState(ErrorState(failure: failure));

  void _setState(ViewState state) {
    _state = state;
    notifyListeners();
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (mounted) super.notifyListeners();
  }
}
