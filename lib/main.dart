import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled8/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterError.onError = (details) {
  //   FlutterError.presentError(details);
  //   log(
  //     details.exception.toString(),
  //     stackTrace: details.stack,
  //     name: 'flutter_error',
  //   );
  // };
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   log(error.toString(), stackTrace: stack, name: 'platform_error');
  //   return true;
  // };
  setup();
  runApp(MyApp());
}

GetIt sl = GetIt.instance;

void setup() async {
  // make sure you register it as a Singleton or a lazySingleton
  sl.registerSingleton<AppRouter>(AppRouter());
}

// final AppRouter router = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',

      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.sakura),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.sakura),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      // Set the initial route to the home page.
      routerConfig: sl.get<AppRouter>().config(),
      builder: (context, widget) {
        Widget error = const Text('...rendering error...');
        if (widget is Scaffold || widget is Navigator) {
          error = Scaffold(body: Center(child: error));
        }
        ErrorWidget.builder = (errorDetails) => error;
        if (widget != null) return widget;
        throw StateError('widget is null');
      },
    );
  }
}
