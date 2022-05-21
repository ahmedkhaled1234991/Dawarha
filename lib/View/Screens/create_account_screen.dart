import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart' as intl;

import '../../constants.dart';
import '../Widgets/custom_button.dart';
import '../Widgets/custom_date_of_birth_text_form_field.dart';
import '../Widgets/custom_gender_drop_down_button.dart';
import '../Widgets/custom_name_text_field.dart';
import '../Widgets/custom_number_phone_text_field.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  DateTime _currentDate = DateTime.now();

  TextEditingController nameController = TextEditingController();
  TextEditingController birthOfDate = TextEditingController();

  getBirthOfDate(){
    String? date;
    setState(() {
      date = intl.DateFormat('dd/MM/yyyy').format(_currentDate);
      birthOfDate.text = date!;
    });
    return date;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() {
      setState(() {

      });
    });
  }

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
          icon: Icon(Icons.arrow_forward_ios, color: AppColors.greenColor, size: SizeConfig.screenWidth / 16),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32, vertical: SizeConfig.screenHeight / 46.933),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'قم بإنشاء حسابك الشخصى',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 23.467,),
              Center(
                child: SizedBox(
                  width: SizeConfig.screenWidth / 3.2,
                  height: SizeConfig.screenWidth / 3.2,
                  child: Image.asset("assets/images/Person_image.jpg", fit: BoxFit.cover,),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 46.933,
              ),
              Center(
                child: Text(
                  'اختر صورة',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 46.933,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CustomNameTextField(nameController: nameController),
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 37.547,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CustomNumberPhoneTextField(),
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 23.467,
              ),
              Center(
                child: Text(
                  'اختيارى',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 46.933,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CustomGenderDropDownButton(),
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 46.933,
              ),
              Stack(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: CustomDateOfBirthTextFromField(birthOfDate: birthOfDate),
                  ),
                  GestureDetector(
                    onTap: (){
                      dateOfBirthBottomSheet();
                    },
                    child: Container(
                      width: double.infinity,
                      height: SizeConfig.screenHeight / 11.447,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 31.289,
              ),
              CustomButton(
                  height: SizeConfig.screenHeight / 15.644,
                  textButton: 'تم',
                  width: double.infinity,
                  colorButton: (nameController.text.isEmpty)? Colors.grey : AppColors.greenColor,
                  onPressed: () {

                  },
              ),
              SizedBox(height: SizeConfig.screenHeight / 31.289,),
              SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight / 13.412,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(text: 'بالضغط على حفظ انت توافق على '),
                              TextSpan(
                                text: 'شروط الخدمة',
                                style: TextStyle(color: Colors.green, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => print('Tap Here onTap1'),
                              ),
                              TextSpan( text: ' و أنك',),
                            ]),
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                            children: [
                              TextSpan( text: ' قرأت',),
                              TextSpan(
                                text: ' سياسة الخصوصية',
                                style: TextStyle(color: Colors.green, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => print('Tap Here onTap2'),
                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future dateOfBirthBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth / 24,
                  vertical: SizeConfig.screenHeight / 187.733,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: (){
                        getBirthOfDate();
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 15 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: SizeConfig.screenHeight / 3,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  backgroundColor: Colors.white,
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                    _currentDate = newdate;
                  },
                  maximumDate: DateTime(2050, 12, 30),
                  minimumYear: 1960,
                  maximumYear: 2050,
                  minuteInterval: 1,
                  mode: CupertinoDatePickerMode.date,
                ),
              ),
            ]);
      },
    );
  }
}
