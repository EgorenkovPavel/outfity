import 'package:material_ui/material_ui.dart';

import 'app/app.dart';
import 'core/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const App());
}




