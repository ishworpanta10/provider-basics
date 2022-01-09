import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/services/service_locator.dart';
import 'data/providers/z_providers_barrel.dart';
import 'ui/screens/screens.dart';

Future<void> main() async {
  runApp(const MyApp());
  await setupLocators();
  SystemChrome.setSystemUIOverlayStyle(clearSystemOverlayStyle);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>.value(
          value: locator<ThemeProvider>(),
        ),
        ChangeNotifierProvider<BasicProvider>.value(
          value: locator<BasicProvider>(),
        ),
      ],
      child: const InitializeTheme(),
    );
  }
}

/// [InitializeTheme] widget for initializing theme

class InitializeTheme extends StatefulWidget {
  const InitializeTheme({Key? key}) : super(key: key);

  @override
  State<InitializeTheme> createState() => _InitializeThemeState();
}

class _InitializeThemeState extends State<InitializeTheme> {
  @override
  void initState() {
    super.initState();
    locator<ThemeProvider>().init();
  }

  @override
  Widget build(BuildContext context) {
    return const MainApp();
  }
}

///[MainApp] Start from here

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, data, child) {
        return MaterialApp(
          title: 'Provider Demo App',
          debugShowCheckedModeBanner: false,
          theme: data.getTheme(),
          home: const HomePage(),
        );
      },
    );
  }
}
