import 'package:dawarha/View/Screens/competition_screen.dart';
import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RanksScreen extends StatelessWidget {
  const RanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.screenHeight / 31.289,),
            Center(
              child: Text(
                'أنضم الى مسابقة',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.25 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 93.867,),
            Center(
              child: Text(
                'أعد التدوير و اكسب',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12.5 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 37.547,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return CompetitionScreen();
                  }));
                },
                child: Container(
                  width: SizeConfig.safeBlockHorizontal * 90,
                  height: SizeConfig.safeBlockVertical * 15.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 48, vertical: SizeConfig.screenHeight / 117.333),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: SizeConfig.screenWidth / 6.857,
                              height: SizeConfig.screenWidth / 6.857,
                              child: CircleAvatar(
                                radius: SizeConfig.screenWidth / 13.714,
                                backgroundColor: Colors.white,
                                child: Image.asset("assets/images/Nestle_recycle_image.png", fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth / 24,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nestle HQ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight / 117.333,),
                                Text(
                                  '52 / 100',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight / 187.733,),
                                Text(
                                  'Competition ends in',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Days & 20:55:30 H 15',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 62.578,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return CompetitionScreen();
                  }));
                },
                child: Container(
                  width: SizeConfig.safeBlockHorizontal * 90,
                  height: SizeConfig.safeBlockVertical * 15.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 48, vertical: SizeConfig.screenHeight / 117.333),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: SizeConfig.screenWidth / 6.857,
                              height: SizeConfig.screenWidth / 6.857,
                              child: CircleAvatar(
                                radius: SizeConfig.screenWidth / 13.714,
                                backgroundColor: Colors.white,
                                child: Image.asset("assets/images/Nestle_recycle_image.png", fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth / 24,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nestle Pure Life',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight / 117.333,),
                                Text(
                                  '1859 / 2000',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: SizeConfig.screenHeight / 187.733,),
                                Text(
                                  'Competition ends in',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Days & 20:55:30 H 0',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: SizeConfig.screenHeight / 3.755,
              child: Image.asset("assets/images/Recycling_image.webp", fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}
