import 'package:wow_classic_raid_reset_timer/core/base/functional/either.dart';
import 'package:wow_classic_raid_reset_timer/core/base/functional/failure.dart';

abstract class AsyncSingleton {
  Future initialization;
  bool _isInitialized = false;
  bool get isInitialized => _isInitialized == true;

  AsyncSingleton() {
    initialization = initialize()..then((value) => _isInitialized = value);
  }

  Future<bool> initialize();

  Future<Either<Failure, T>> awaited<T>(
      Future<Either<Failure, T>> Function() call) async {
    await initialization;
    if (isInitialized) {
      return await call();
    } else {
      return Left(Failure(message: 'singleton not initialized'));
    }
  }
}
