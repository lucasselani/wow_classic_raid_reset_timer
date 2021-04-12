import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:wow_classic_raid_reset_timer/core/base/functional/either.dart';
import 'package:wow_classic_raid_reset_timer/core/base/functional/failure.dart';
import 'package:wow_classic_raid_reset_timer/core/base/singleton/async_singleton.dart';

abstract class HiveEntity {
  int id;
}

class HiveDatasource<T> extends AsyncSingleton {
  Box<T> _box;
  final Future<Either<Failure, Box<T>>> Function() _initialize;

  HiveDatasource(this._initialize) : super();

  @override
  Future<bool> initialize() async {
    final result = await _initialize();
    if (result.isLeft) return false;

    _box = result.right;
    return true;
  }

  Future<Either<Failure, T>> put({@required T data, dynamic id}) =>
      awaited<T>(() async {
        var dataId = id ?? (data is HiveEntity ? data.id : null);
        if (dataId == null) {
          dataId = await _box.add(data);
          if (data is HiveEntity) {
            data.id = dataId;
          }
        }
        await _box.put(dataId, data);
        return Right(data);
      });

  Future<Either<Failure, void>> delete({@required dynamic id}) =>
      awaited<void>(() async {
        if (_box.containsKey(id)) {
          await _box.delete(id);
          return Right(null);
        } else {
          return Left(Failure(message: 'document doesnt exist'));
        }
      });

  Future<Either<Failure, T>> get({@required dynamic id}) => awaited<T>(() {
        final document = _box.get(id);
        return Future.value(document != null
            ? Right(document)
            : Left(Failure(message: 'Document not found')));
      });

  Future<Either<Failure, List<T>>> list() => awaited<List<T>>(
        () async => Right(_box.values?.toList() ?? <T>[]),
      );
}
