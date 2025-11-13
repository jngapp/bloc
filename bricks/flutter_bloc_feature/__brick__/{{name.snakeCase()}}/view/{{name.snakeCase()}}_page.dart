import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  {{#isMultiPage}}
  final {{repoDataClass}} value;
  {{/isMultiPage}}
  const {{name.pascalCase()}}Page({{#isMultiPage}}this.value,{{/isMultiPage}}{super.key});

  @override
  Widget build(BuildContext context) {
{{#is_bloc}}{{> bloc_provider }}{{/is_bloc}}{{^is_bloc}}{{> cubit_bloc_provider }}{{/is_bloc}}
  }
}

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
{{#is_bloc}}{{> bloc_builder }}{{/is_bloc}}{{^is_bloc}}{{> cubit_bloc_builder }}{{/is_bloc}}
  }
}
