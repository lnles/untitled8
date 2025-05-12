import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled8/app_router.dart';

void main() async{
  setup();
  runApp(MyApp());
}

GetIt sl=GetIt.instance;

void setup() async {
  // GetIt sl=GetIt.instance;
  if (kDebugMode) {
    print('Setting up dependencies...');
  }
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
    );
  }
}

