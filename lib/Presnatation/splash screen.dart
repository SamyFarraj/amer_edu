import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/component.dart';
import 'main screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset('lib/assets/Image/snow.png'),
            subtext("Note Clever", Theme.of(context).cardColor)
          ],
        ),
        nextScreen: MainScreen()
    ,
      splashIconSize:300,
      duration: 3000,
//سرعة الدو
animationDuration:const Duration(seconds: 2) ,
      splashTransition: SplashTransition.fadeTransition,

    );
  }
}
