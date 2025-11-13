import 'package:rxdart/rxdart.dart';

class {{name.pascalCase()}}Repo {
  final {{repoDataClass}} initialValue;
  {{name.pascalCase()}}Repo(this.initialValue);
  final _controller = BehaviorSubject<{{repoDataClass}}>();
{{repoDataClass}}? _value;

  Stream<{{repoDataClass}}> get stream => _controller.stream;

  Future<{{repoDataClass}}> get() async {
    _value ??= initialValue;
    _controller.add(_value!);
    return _value!;
  }

  Future<void> update({{repoDataClass}} newValue) async {
    // update backend
    _value = newValue;
    _controller.add(_value!);
  }

  void dispose() {
    _controller.close();
  }
}