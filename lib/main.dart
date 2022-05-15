import 'package:beerom/generated/l10n.dart';
import 'package:beerom/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
