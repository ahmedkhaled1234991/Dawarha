import 'package:carousel_slider/carousel_slider.dart';
import 'package:dawarha/View/Screens/competition_screen.dart';
import 'package:dawarha/View/Screens/contact_us_screen.dart';
import 'package:dawarha/View/Screens/edit_profile_screen.dart';
import 'package:dawarha/View/Screens/faqs_screen.dart';
import 'package:dawarha/View/Screens/notification_screen.dart';
import 'package:dawarha/View/Screens/tell_us_your_opinion_screen.dart';
import 'package:dawarha/View/Screens/user_guide_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: CustomPaint(
              size: Size(SizeConfig.screenWidth / 1.6,
                  (SizeConfig.screenWidth / 1.6 * 1).toDouble()),
              painter: RPSCustomPainter(),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight / 24.702,
            bottom: SizeConfig.screenHeight / 2.227,
            right: SizeConfig.screenWidth / 6,
            child: Text(
              "DAWARHA",
              style: TextStyle(
                color: AppColors.blueColor,
                fontSize: 17.5 * SizeConfig.fontSizeScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(
                  color: Colors.black, size: SizeConfig.screenWidth / 13.714),
            ),
            endDrawer: menu(context),
            body: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.screenHeight / 46.9333),
                      child: slider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth / 19.2),
                      child: Text(
                        'أبطال الأرض',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight / 64.9333,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: earthHerosList(),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight / 31.289,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth / 19.2),
                      child: Text(
                        'المسابقات',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight / 64.9333,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: competitionList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget menu(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: SizeConfig.screenWidth / 1.371,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight / 4.1,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                  ),
                  elevation: 10,
                  shadowColor: Colors.black,
                  margin: EdgeInsets.only(top: 0, left: 0, right: 0),
                  color: AppColors.greenColor,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: SizeConfig.screenWidth / 12,
                          child: Text(''),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.0001,
                        ),
                        Text(
                          "احمد خالد",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.5 * SizeConfig.fontSizeScale,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.0001,
                        ),
                        Text(
                          "01020735224",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14 * SizeConfig.fontSizeScale,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.0001,
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'الاشعارات',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return NotificationScreen();
                  }));
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'تعديل الملف الشخصى',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return EditProfileScreen();
                  }));
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.book,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'دليل المستخدم',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return UserGuideScreen();
                  }));
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'الأسئلة الشائعة',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return FaqsScreen();
                  }));
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.announcement,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'اخبرنا رأيك',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return TellUsYourOpinionScreen(
                        screenNavigateFrom: 'Home screen');
                  }));
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/Contact_icon.svg",
                  width: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'تواصل معنا',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ContactUsScreen();
                  }));
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.translate,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'تغيير اللغة',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.security,
                  color: AppColors.greenColor,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'سياسة الخصوصية',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight / 62.578,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                  size: SizeConfig.screenWidth / 16,
                ),
                title: Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget slider() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: double.infinity,
      height: SizeConfig.screenHeight / 3.755,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          viewportFraction: 1.0,
          height: SizeConfig.screenHeight / 4.693,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 600),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return GridTile(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              color: Colors.grey,
              elevation: 5,
            ),
            footer: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              color: Colors.white.withOpacity(0.3),
              child: Text(''),
            ),
          );
        },
      ),
    );
  }

  Widget earthHerosList() {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.screenHeight / 7.221,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: SizeConfig.screenWidth / 15,
                  backgroundColor: Colors.white,
                  child: SizedBox(
                      width: SizeConfig.screenWidth / 6,
                      height: SizeConfig.screenWidth / 6,
                      child: Image.asset(
                        "assets/images/Nestle_image.png",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight / 93.867,
                ),
                Text(
                  "Nestle Pure Life",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget competitionList() {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.screenHeight / 7.221,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 48),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CompetitionScreen();
                }));
              },
              child: CircleAvatar(
                radius: SizeConfig.screenWidth / 8,
                backgroundColor: Colors.grey,
                child: SizedBox(
                  width: SizeConfig.screenWidth / 3.84,
                  height: SizeConfig.screenWidth / 3.84,
                  child: Image.asset(
                    "assets/images/Nestle_recycle_image.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(100, 120, 198, 148)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width, size.height * 0.1444000);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.5464000, 0);
    path0.quadraticBezierTo(size.width * 0.5482000, size.height * 0.0976000,
        size.width * 0.6864000, size.height * 0.1228000);
    path0.quadraticBezierTo(size.width * 0.7684000, size.height * 0.1366000,
        size.width, size.height * 0.1444000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
