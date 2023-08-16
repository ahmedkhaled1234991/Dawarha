import 'package:dawarha/View/Screens/faqs_screen.dart';
import 'package:dawarha/View/Screens/tell_us_your_opinion_screen.dart';
import 'package:dawarha/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'other_communications_screen.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

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
              'تواصل معنا',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.75 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        titleSpacing: SizeConfig.screenWidth / 16,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios, color: AppColors.greenColor, size: SizeConfig.screenWidth / 16,),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 62.578),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 96),
                child: SizedBox(
                  width: double.infinity,
                  height: SizeConfig.screenHeight / 2.347,
                  child: Image.asset("assets/images/Contact_us_image.jfif", fit: BoxFit.fitWidth,),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 23.467,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return TellUsYourOpinionScreen(screenNavigateFrom: 'Contact us screen');
                  }));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 19.2),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: Text(
                        'تواصل معنا عن طريق البريد الإلكترونى',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      leading: Icon(Icons.email_outlined, color: AppColors.greenColor, size: SizeConfig.screenWidth / 13.714,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 31.289,),
              Divider(
                color: Colors.black,
                indent: SizeConfig.screenWidth / 8,
                endIndent: SizeConfig.screenWidth / 9.6,
                thickness: 1,
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return OtherCommunications();
                  }));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 19.2),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: Text(
                        'وسائل التواصل الأخرى',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      leading: SvgPicture.asset("assets/icons/Contact_icon.svg", width: SizeConfig.screenWidth / 13.714,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 31.289,),
              Divider(
                color: Colors.black,
                indent: SizeConfig.screenWidth / 24,
                endIndent: SizeConfig.screenWidth / 24,
                thickness: 1,
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 26.667),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(text: 'قبل التواصل معنا برجاء قراءة'),
                            TextSpan(
                              text: ' الأسئلة الشائعة',
                              style: TextStyle(color: AppColors.greenColor, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                  return FaqsScreen();
                                })),
                            ),
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
