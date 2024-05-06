import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pasakayv1/infoHandler/app_info.dart';
import 'package:pasakayv1/screens/register_screen.dart';
import 'package:pasakayv1/screens/search_places_screen.dart';
import 'package:pasakayv1/themeProvider/theme_provider.dart';
import 'package:pasakayv1/screens/login_screen.dart';
import 'package:pasakayv1/screens/main_screen.dart';
import 'package:pasakayv1/screens/register_screen.dart';
import 'package:pasakayv1/splashScreen/splash_screen.dart';
import 'package:pasakayv1/themeProvider/theme_provider.dart';
import 'package:pasakayv1/screens/register_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: 'PASAKAY',
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

