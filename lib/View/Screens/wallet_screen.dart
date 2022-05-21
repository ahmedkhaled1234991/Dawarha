import 'package:dawarha/View/Screens/redeem_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: SizeConfig.screenHeight / 20.859,
              right: 0,
              left: 0,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight / 3.129,
                child: Image.asset("assets/images/Wallet_image.jpg", width: double.infinity, fit: BoxFit.cover,),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight / 1.877,
                  color: Colors.black.withOpacity(0.1),
                ),
            ),
            Positioned(
              top: SizeConfig.screenHeight / 2.682,
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight / 1.877,
                child: balanceCard(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget balanceCard(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28))),
      shadowColor: Colors.grey,
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth / 19.2),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight / 46.933,),
              Text(
                'الرصيد الكلى',
                style: TextStyle(
                  color: AppColors.blueColor,
                  fontSize: 17.5 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 26.819,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: AppColors.blueColor,
                      fontSize: 23.75 * SizeConfig.fontSizeScale,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth / 96,),
                  Text(
                    'نقاط دورها',
                    style: TextStyle(
                      color: AppColors.blueColor,
                      fontSize: 13.75 * SizeConfig.fontSizeScale,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth / 4,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(SizeConfig.screenWidth / 3.429, SizeConfig.screenHeight / 18.773),
                      primary: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return RedeemScreen();
                      }));
                    },
                    child: Text('استرداد',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.75 * SizeConfig.fontSizeScale,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight / 26.819,),
              Text(
                'المعاملات',
                style: TextStyle(
                  color: AppColors.blueColor,
                  fontSize: 15 * SizeConfig.fontSizeScale,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 15.644,),
              Center(
                child: Text(
                  'لا توجد معاملات متاحة',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                    fontWeight: FontWeight.w400,
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
