import 'package:wow_classic_raid_reset_timer/core/base/functional/either.dart';
import 'package:wow_classic_raid_reset_timer/core/base/functional/failure.dart';

abstract class AsyncUseCase<Out> {
  Future<Either<Failure, Out>> run();
}

abstract class UseCase<Out> {
  Out run();
}
