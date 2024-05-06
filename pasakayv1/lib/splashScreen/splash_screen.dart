import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pasakayv1/Assistants/assistant_methods.dart';
import 'package:pasakayv1/global/global.dart';
import 'package:pasakayv1/screens/login_screen.dart';
import 'package:pasakayv1/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer() {
    Timer(Duration(seconds: 3), () async {
      if(await firebaseAuth.currentUser != null){
        firebaseAuth.currentUser != null ? AssistantMethods.readCurrentOnLineUserinfo() : null;
        Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
      }
      else{
        Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen() ));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();

  }

  @override
  Widget build(BuildContext context) {
    bool darkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                darkTheme ? 'images/logo.png' : 'images/logo.png'),

          ],
        ),
      ),
    );
  }
}
