import 'package:dawarha/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'faqs_screen.dart';

class TellUsYourOpinionScreen extends StatefulWidget {

  String screenNavigateFrom;

  TellUsYourOpinionScreen({Key? key, required this.screenNavigateFrom}) : super(key: key);

  @override
  State<TellUsYourOpinionScreen> createState() => _TellUsYourOpinionScreenState();
}

class _TellUsYourOpinionScreenState extends State<TellUsYourOpinionScreen> {
  FocusNode _emailFocus = FocusNode();
  FocusNode _topicFocus = FocusNode();
  FocusNode _messageFocus = FocusNode();

  bool? navigatedFromHomeScreen;
  bool? hintEmailChanged;
  bool? hintTopicChanged;
  bool? hintMessageChanged;

  checkScreenNavigateFrom(){
    if(widget.screenNavigateFrom.contains('Home screen')){
      setState(() {
        navigatedFromHomeScreen = true;
      });
    } else if(widget.screenNavigateFrom.contains('Contact us screen')){
      setState(() {
        navigatedFromHomeScreen = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    checkScreenNavigateFrom();
    _emailFocus.addListener(_onFocusChangeEmailHint);
    _topicFocus.addListener(_onFocusChangeTopicHint);
    _messageFocus.addListener(_onFocusChangeMessageHint);
  }

  @override
  void dispose() {
    super.dispose();
    _emailFocus.removeListener(_onFocusChangeEmailHint);
    _topicFocus.removeListener(_onFocusChangeTopicHint);
    _messageFocus.removeListener(_onFocusChangeMessageHint);
    _emailFocus.dispose();
    _topicFocus.dispose();
    _messageFocus.dispose();
  }

  void _onFocusChangeEmailHint() {
    setState(() {
      hintEmailChanged = true;
      hintMessageChanged = false;
    });
    print("Focus: ${_emailFocus.hasFocus.toString()}");
  }

  void _onFocusChangeTopicHint() {
    setState(() {
      hintTopicChanged = true;
      hintMessageChanged = false;
    });
    print("Focus: ${_topicFocus.hasFocus.toString()}");
  }

  void _onFocusChangeMessageHint() {
    setState(() {
      hintMessageChanged = true;
    });
    print("Focus: ${_messageFocus.hasFocus.toString()}");
  }

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
              (navigatedFromHomeScreen!)? 'اخبرنا رأيك' : 'التواصل عن طريق البريد الألكترونى',
              style: TextStyle(
                color: Colors.black,
                fontSize: (navigatedFromHomeScreen!)? 18.75 * SizeConfig.fontSizeScale : 17.5 * SizeConfig.fontSizeScale,
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
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth /24 , vertical: SizeConfig.screenHeight / 23.467),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  focusNode: _emailFocus,
                  cursorColor: AppColors.greenColor,
                  cursorHeight: SizeConfig.screenHeight / 26.819,
                  cursorWidth: SizeConfig.screenWidth / 160,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.25 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelText: 'بريدك الإلكترونى',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16.25 * SizeConfig.fontSizeScale,
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
                    hintText: (hintEmailChanged??false)? 'ادخل بريدك الإلكترونى' : 'بريدك الإلكترونى',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.25 * SizeConfig.fontSizeScale,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 37.547,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  focusNode: _topicFocus,
                  cursorColor: AppColors.greenColor,
                  cursorHeight: SizeConfig.screenHeight / 26.819,
                  cursorWidth: SizeConfig.screenWidth / 160,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.25 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelText: 'الموضوع',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 24,
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
                    hintText: (hintTopicChanged??false)? 'ادخل موضوع الرسالة' : 'الموضوع',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.25 * SizeConfig.fontSizeScale,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 37.547,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  focusNode: _messageFocus,
                  cursorColor: AppColors.greenColor,
                  cursorHeight: SizeConfig.screenHeight / 26.819,
                  cursorWidth: SizeConfig.screenWidth / 160,
                  maxLines: 6,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.25 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    labelText: 'الرسالة',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 24,
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
                    hintText: (hintMessageChanged??false)? 'اكتب سؤالك ...' : 'الرسالة',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.25 * SizeConfig.fontSizeScale,
                      height: (hintMessageChanged??false)? 1.4 : 6,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 37.547,),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                          onPressed: (){

                          },
                          icon: Icon(Icons.attach_file, color: Colors.black, size: SizeConfig.screenWidth / 13.714,),
                          label: Text(
                              'إرفاق صورة',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15 * SizeConfig.fontSizeScale,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                      ),
                    ],
                  ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 37.547,),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.greenColor,
                    minimumSize: Size(SizeConfig.screenWidth / 3.692, SizeConfig.screenHeight / 20.859),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                    onPressed: (){

                    },
                    child: Text(
                      'إرسال',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.75 * SizeConfig.fontSizeScale,
                        fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 37.547,),
              Divider(
                color: Colors.black,
                indent: SizeConfig.screenWidth / 24,
                endIndent: SizeConfig.screenWidth / 24,
                thickness: 1,
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 93.867,
              ),
              (navigatedFromHomeScreen!)
                  ? Container()
                  : SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.667),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.5 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w700),
                                children: [
                                  TextSpan(text: 'قبل التواصل معنا برجاء قراءة'),
                                  TextSpan(
                                    text: ' الأسئلة الشائعة',
                                    style: TextStyle(
                                        color: AppColors.greenColor,
                                        fontSize: 12.5 * SizeConfig.fontSizeScale,
                                        fontWeight: FontWeight.w700),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => Navigator.push(context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) {
                                            return FaqsScreen();
                                          })),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
