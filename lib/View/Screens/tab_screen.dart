import 'package:dawarha/View/Screens/collect_and_win_screen.dart';
import 'package:dawarha/View/Screens/login_screen.dart';
import 'package:dawarha/View/Screens/look_for_machines_screen.dart';
import 'package:dawarha/View/Screens/recycle_now_screen.dart';
import 'package:dawarha/View/Widgets/custom_button.dart';
import 'package:dawarha/View/Widgets/main_page.dart';
import 'package:dawarha/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'create_account_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  final _totalDots = 3;
  double _currentPosition = 0.0;



  @override
  void initState() {
    _tabController = TabController(vsync: this, length: _totalDots);

    _tabController.addListener(() {
      int _selectedIndex = 0;
      setState(() {
        _selectedIndex = _tabController.index;
        _currentPosition = _selectedIndex + 0.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth / 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight / 7.822, right: SizeConfig.screenWidth / 96, left: SizeConfig.screenWidth / 96, bottom: SizeConfig.screenHeight / 93.866),
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight / 1.676,
                color: Colors.white,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [RecycleNowScreen(), CollectAndWinScreen(), LookForMachinesScreen()],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight / 187.733,
            ),
            Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPosition,
                  decorator: DotsDecorator(
                    activeColor: AppColors.greenColor,
                    size: Size.fromRadius(SizeConfig.screenHeight / 137.095),
                    activeSize: Size.fromRadius(SizeConfig.screenHeight / 78.222),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 62.578,),
            CustomButton(
                textButton: (_tabController.index > 1)? '!يلا دورها' : 'التالى',
                width: SizeConfig.screenWidth / 0.938,
                height: SizeConfig.screenHeight / 15.644,
                colorButton: AppColors.greenColor,
                onPressed: () {
                  if(_tabController.index > 1) {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return CreateAccountScreen();
                    }));
                  } else {
                    _tabController.animateTo((_tabController.index + 1) % 3);
                  }
                },
            ),
            SizedBox(height: SizeConfig.screenHeight / 18.773,),
            Center(
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(text: 'لديك حساب بالفعل ؟'),
                      TextSpan(
                        text: ' تسجيل الدخول',
                        style: TextStyle(color: AppColors.greenColor, fontSize: 12.5 * SizeConfig.fontSizeScale, fontWeight: FontWeight.w700),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return LoginScreen();
                                }));
                          }
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}