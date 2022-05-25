import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dawarha/View/Screens/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

import '../../constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnimatedSplashScreen(
      duration: 5000,
      splash: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                width: SizeConfig.screenWidth / 1.92,
                height: SizeConfig.screenWidth / 1.92,
                child: Image.asset("assets/images/Logo_image.jpeg", fit: BoxFit.fill,),),
              Spacer(),
              SizedBox(
                width: SizeConfig.screenWidth / 4.8,
                height: SizeConfig.screenWidth / 4.8,
                child: Image.asset("assets/images/Splash_image.png", fit: BoxFit.contain,),
              ),
            ],
          )),
      nextScreen: TabScreen(),
      backgroundColor: Colors.white,
      splashIconSize: double.infinity,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
