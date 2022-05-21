import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {

  String textButton;
  double width;
  double height;
  Color colorButton;
  Function onPressed;

  CustomButton({
    required this.textButton,
    required this.width,
    required this.height,
    required this.colorButton,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorButton,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
      onPressed: () => onPressed(),
      child: Text(
        textButton,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15 * SizeConfig.fontSizeScale,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
