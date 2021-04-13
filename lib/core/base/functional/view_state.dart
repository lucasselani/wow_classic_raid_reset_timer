import 'package:wow_classic_raid_reset_timer/core/base/functional/failure.dart';

abstract class ViewState {
  bool get isLoading => this is LoadingState;

  bool get isError => this is ErrorState;

  bool get isSuccess => this is SuccessState;

  Failure get error {
    if (isError) {
      return (this as ErrorState)._value;
    } else {
      throw Exception('Illegal use. You should isError check before calling ');
    }
  }
}

class LoadingState extends ViewState {}

class ErrorState extends ViewState {
  final Failure _value;

  ErrorState({Failure failure}) : _value = failure;
}

class SuccessState extends ViewState {}
