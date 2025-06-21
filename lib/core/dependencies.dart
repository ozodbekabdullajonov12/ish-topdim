import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart' show SingleChildWidget;

import 'client.dart';

final List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
];