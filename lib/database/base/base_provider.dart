import 'package:hive/hive.dart';

abstract class BaseProvider<T> {
  final String _boxName;
  Box<T> _box;

  BaseProvider(this._boxName) {
    registerAdapter();
  }

  Future deleteAll() async => await _box.deleteAll(_box.keys);

  void add(T data) => _box.add(data);

  List<T> list() => _box.values.toList();

  void registerAdapter();

  Future openBox() async => _box ??= await Hive.openBox<T>(_boxName);
}
