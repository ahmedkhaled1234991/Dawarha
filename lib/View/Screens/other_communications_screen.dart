import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'faqs_screen.dart';

class OtherCommunications extends StatelessWidget {
  const OtherCommunications({Key? key}) : super(key: key);

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
              'وسائل التواصل الأخرى',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.5 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        titleSpacing: SizeConfig.screenWidth / 9.6,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios, color: AppColors.greenColor, size: SizeConfig.screenWidth / 16,),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32, vertical: SizeConfig.screenHeight / 46.933),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  title: Text(
                    'info@dawarha.com',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13.75 * SizeConfig.fontSizeScale,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                leading: Icon(Icons.email_outlined, color: AppColors.greenColor, size: 38,),
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              ListTile(
                title: Text(
                  '01062866563',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(Icons.phone_enabled, color: AppColors.greenColor, size: SizeConfig.screenWidth / 12.632,),
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              ListTile(
                title: Text(
                  'www.dawarha.com',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: SvgPicture.asset("assets/icons/Website_icon.svg", width: SizeConfig.screenWidth / 12.632,),
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              ListTile(
                title: Text(
                  'facebook/dawarha',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: SvgPicture.asset("assets/icons/Facebook_icon.svg", width: SizeConfig.screenWidth / 12.632,),
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              ListTile(
                title: Text(
                  'instagram/dawarha',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: SvgPicture.asset("assets/icons/Instagram_icon.svg", width: SizeConfig.screenWidth / 12.632,),
              ),
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              ListTile(
                title: Text(
                  'linkedin/dawarha',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: SvgPicture.asset("assets/icons/Linkedin_icon.svg", width: SizeConfig.screenWidth / 12.632,),
              ),
              SizedBox(height: SizeConfig.screenHeight / 31.289,),
              Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
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
                            TextSpan(text: 'يمكنك أيضا قراءة'),
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
