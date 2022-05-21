import 'package:dawarha/View/Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';
import '../Widgets/custom_number_phone_text_field.dart';

class RedeemScreen extends StatelessWidget {
  const RedeemScreen({Key? key}) : super(key: key);

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
                'استرداد',
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
              'ادخل رقم أحد شركائنا و عدد النقاط التى ترغب فى استردادها',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 11 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 30,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 24),
              child: CustomNumberPhoneTextField(),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 30,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                cursorColor: AppColors.greenColor,
                cursorHeight: SizeConfig.screenHeight / 26.819,
                cursorWidth: SizeConfig.screenWidth / 160,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.25 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w700,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'عدد النقاط',
                  labelStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w400,
                  ),
                  alignLabelWithHint: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greenColor, width: 3, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  disabledBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight / 30,
          ),
          Center(
            child: CustomButton(
                textButton: 'إرسال',
                width: SizeConfig.screenWidth / 1.067,
                height: SizeConfig.screenHeight / 15.644,
                colorButton: AppColors.greenColor,
                onPressed: () {

                }
            ),
          ),
        ],
      ),
    );
  }
}
