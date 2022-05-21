import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class CustomNameTextField extends StatelessWidget {

  TextEditingController nameController;

  CustomNameTextField({Key? key, required this.nameController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      controller: nameController,
      cursorColor: AppColors.greenColor,
      cursorHeight: SizeConfig.screenHeight / 26.819,
      cursorWidth: SizeConfig.screenWidth / 160,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.25 * SizeConfig.fontSizeScale,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        labelText: 'الأسم الأول والثانى',
        labelStyle: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 15 * SizeConfig.fontSizeScale,
          fontWeight: FontWeight.w400,
        ),
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 3, style: BorderStyle.solid),
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
        hintText: 'الأسم الأول والثانى',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.25 * SizeConfig.fontSizeScale,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
