import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RecycleNowScreen extends StatelessWidget {
  const RecycleNowScreen({Key? key}) : super(key: key);

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
              child: Image.asset("assets/images/Recycle_now_image.jpg", fit: BoxFit.contain,),
            ),
            SizedBox(height: SizeConfig.screenHeight / 93.867,),
            Center(
              child: Text(
                'اعد التدوير الأن!',
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
                'تطبيق دورها\n هيساعدك تلاقى الطريقة الأنسب لإعادة تدوير مخلفاتك',
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
