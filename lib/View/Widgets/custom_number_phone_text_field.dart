import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomNumberPhoneTextField extends StatelessWidget {
  const CustomNumberPhoneTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: SizeConfig.screenWidth / 1.6,
          child: TextFormField(
            cursorColor: AppColors.greenColor,
            cursorHeight: SizeConfig.screenHeight / 26.819,
            cursorWidth: SizeConfig.screenWidth / 160,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.25 * SizeConfig.fontSizeScale,
              fontWeight: FontWeight.w700,
            ),
            textDirection: TextDirection.ltr,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'رقم الهاتف',
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
        SizedBox(width: SizeConfig.screenWidth / 20,),
        Text(
          '965+',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15 * SizeConfig.fontSizeScale,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth / 32,),
        SizedBox(
          width: SizeConfig.screenWidth / 10.667,
          height: SizeConfig.screenHeight / 31.289,
          child: Image.asset("assets/images/Kuwait_flag_image.svg.png", fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
