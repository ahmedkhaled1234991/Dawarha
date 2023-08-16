import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class LookForMachinesScreen extends StatelessWidget {
  const LookForMachinesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight / 3.129,
              child: Image.asset("assets/images/Look_for_machines_image.jpg", fit: BoxFit.contain,),
            ),
            SizedBox(height: SizeConfig.screenHeight / 93.867,),
            Center(
              child: Text(
                'دور على الماكينات!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 93.867,),
            Center(
              child: Text(
                'قم بالسماح للتطبيق بإستخدام موقعك\n لإيجاد ماكينة إعادة تدوير\n قريبة منك.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.5 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
