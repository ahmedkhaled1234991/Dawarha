import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomGenderDropDownButton extends StatefulWidget {

  @override
  State<CustomGenderDropDownButton> createState() => _CustomGenderDropDownButtonState();
}

class _CustomGenderDropDownButtonState extends State<CustomGenderDropDownButton> {

  int? selectedUserGender;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 39.111),
          child: Text(
            'اختر نوع',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11.25 * SizeConfig.fontSizeScale,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth / 2.667,),
        SizedBox(
          width: SizeConfig.screenWidth / 3,
          height: SizeConfig.screenHeight / 10.431,
          child: DropdownButtonFormField<int>(
            icon: Padding(
              padding: EdgeInsets.only(right: SizeConfig.screenWidth / 96),
              child: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: SizeConfig.screenWidth / 16,),
            ),
            decoration: InputDecoration(
              hintText: 'Male',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 13.75 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.w700,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 26.667, vertical: SizeConfig.screenHeight / 37.547),
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
            ),
            value: selectedUserGender,
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.5 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text(
                  'Female',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.5 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedUserGender = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
