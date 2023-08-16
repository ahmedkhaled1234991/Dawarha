import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class CollectAndWinScreen extends StatelessWidget {
  const CollectAndWinScreen({Key? key}) : super(key: key);

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
              child: Image.asset("assets/images/Collect_win_image.jpg", fit: BoxFit.contain,),
            ),
            SizedBox(height: SizeConfig.screenHeight / 93.867,),
            Center(
              child: Text(
                'جمع و اكسب!',
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
                'قم بإعادة التدوير أكثر و أكثر للحصول على نقاط\n و استخدمهم فى أى وقت!',
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
