import 'package:dawarha/View/Widgets/custom_button.dart';
import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserGuideScreen extends StatelessWidget {
  const UserGuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: SizeConfig.screenHeight / 93.867),
            child: Text(
              'دليل المستخدم',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        titleSpacing: 30,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios, color: AppColors.greenColor, size: 18 * SizeConfig.fontSizeScale,),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 62.578),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight / 3.129,
              child: Image.asset("assets/images/User_manual_image.jpg", fit: BoxFit.cover,),
            ),
            SizedBox(height: SizeConfig.screenHeight / 6.705,),
            Center(
              child: CustomButton(
                height: SizeConfig.screenHeight / 13.412,
                colorButton: AppColors.greenColor,
                width: SizeConfig.screenWidth / 1.067,
                textButton: 'اظهار دليل المستخدم',
                onPressed: (){

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
