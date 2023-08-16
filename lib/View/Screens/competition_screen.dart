import 'package:dawarha/View/Screens/contestants_rank_screen.dart';
import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 26.819),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 46.933),
                      child: SizedBox(
                        width: SizeConfig.screenWidth / 6.857,
                        height: SizeConfig.screenWidth / 6.857,
                        child: Image.asset("assets/images/Dawarha_image.png" ,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 93.867,),
                  Center(
                    child: Text(
                      'Nestle HQ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.25 * SizeConfig.fontSizeScale,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 46.933,),
                  Center(
                    child: CircleAvatar(
                      radius: SizeConfig.screenWidth / 8,
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        width: SizeConfig.screenWidth / 3.84,
                        height: SizeConfig.screenWidth / 3.84,
                        child: Image.asset("assets/images/Nestle_recycle_image.png", fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 46.933,),
                  Center(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'لا يمكنك الإنضمام لهذه المسابقة الأن!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.25 * SizeConfig.fontSizeScale,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 46.933,),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.blueColor,
                        minimumSize: Size(SizeConfig.screenWidth / 1.143, SizeConfig.screenHeight / 15.644),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      ),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return ContestantsRankScreen();
                        }));
                        },
                        child: Text(
                          'Ranks',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * SizeConfig.fontSizeScale,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('تاريخ البداية',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.75 * SizeConfig.fontSizeScale,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            Text('Monday, 20 Dec, 2021',
                              style: TextStyle(
                                  color: AppColors.blueColor,
                                  fontSize: 10 * SizeConfig.fontSizeScale,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32),
                        leading: Icon(Icons.access_time, color: Colors.green, size: SizeConfig.screenWidth / 10.667,),
                      ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('عدد المشاركين',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.75 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('52',
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontSize: 10 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32),
                      leading: Icon(Icons.group, color: Colors.green, size: SizeConfig.screenWidth / 10.667,),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nestle Machines',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.75 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('الماكينات المخصصة لهذه المسابقة',
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontSize: 10 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32),
                      leading: Icon(Icons.location_on, color: Colors.green, size: SizeConfig.screenWidth / 10.667,),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('جائزة المسابقة',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.75 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('Surprise',
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontSize: 10 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32),
                      leading: Icon(Icons.wallet_giftcard, color: Colors.green, size: SizeConfig.screenWidth / 10.667,),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('عدد الفائزين',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.75 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('To Be Determined',
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontSize: 10 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 32),
                      leading: Icon(Icons.bar_chart, color: Colors.green, size: SizeConfig.screenWidth / 10.667,),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 16),
                          child: Text('52 مشاركين',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.5 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  SizedBox(
                    width: SizeConfig.screenWidth / 1.067,
                    height: SizeConfig.screenHeight / 18.773,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: SizedBox(
                            width: SizeConfig.screenWidth / 9.6,
                            height: SizeConfig.screenWidth / 9.6,
                            child: CircleAvatar(
                              radius: SizeConfig.screenWidth / 16,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 37.547,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: EdgeInsets.only(right: SizeConfig.screenWidth / 19.2),
                            child: Text(' هذه المسابقة مخصصة لموظفي نستله بيور لايف فقط ، وسيتم\n احتساب نقاط المسابقة فقط من خلال ماكينة دورها التي توجد\n في مقر شركة نستله بيور لايف. سيفوز أكثر متسابق قام بإعادة\n تدوير بهدية تحددها شركة نستله بيور لايف',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11.25 * SizeConfig.fontSizeScale,
                              fontWeight: FontWeight.w400
                            ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight / 31.289,
            right: SizeConfig.screenWidth / 48,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_forward_ios, color: Color(0xff78C694), size: SizeConfig.screenWidth / 16,),
              ),
          ),
        ],
      ),
    );
  }
}
