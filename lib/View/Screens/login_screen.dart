import 'package:dawarha/View/Widgets/main_page.dart';
import 'package:dawarha/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/custom_button.dart';
import '../Widgets/custom_number_phone_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_forward_ios,
              color: AppColors.greenColor, size: SizeConfig.screenWidth / 16),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.screenHeight / 23.467),
            child: Center(
              child: Text(
                'ادخل رقم هاتفك',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.25 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 62.578,
          ),
          Center(
            child: Text(
              'ستصلك رسالة نصية للتحقق',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 12.5 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 62.578,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 24),
              child: CustomNumberPhoneTextField(),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 31.289,
          ),
          Center(
            child: CustomButton(
              height: SizeConfig.screenHeight / 15.644,
              colorButton: AppColors.greenColor,
              textButton: 'التالى',
              width: SizeConfig.screenWidth / 1.067,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return MainPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
