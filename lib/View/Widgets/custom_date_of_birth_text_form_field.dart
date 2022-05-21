import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class CustomDateOfBirthTextFromField extends StatelessWidget {

  TextEditingController birthOfDate;


  CustomDateOfBirthTextFromField({required this.birthOfDate});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      controller: birthOfDate,
      cursorColor: AppColors.greenColor,
      cursorHeight: SizeConfig.screenHeight / 26.819,
      cursorWidth: SizeConfig.screenWidth / 160,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.25 * SizeConfig.fontSizeScale,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Icon(Icons.date_range, color: Colors.grey, size: 30,),
        ),
        labelText: 'تاريخ الميلاد',
        labelStyle: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 15 * SizeConfig.fontSizeScale,
          fontWeight: FontWeight.w400,
        ),
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1, style: BorderStyle.solid),
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
        hintText: 'تاريخ الميلاد',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.25 * SizeConfig.fontSizeScale,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
