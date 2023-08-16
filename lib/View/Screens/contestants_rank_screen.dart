import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ContestantsRankScreen extends StatelessWidget {
  const ContestantsRankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SingleChildScrollView(
            primary: true,
            child: Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight / 11.733, right: SizeConfig.screenWidth / 24, left: SizeConfig.screenWidth / 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      'DAWARHA with Nestle',
                      style: TextStyle(
                        color: AppColors.blueColor,
                        fontSize: 20 * SizeConfig.fontSizeScale,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 31.289,),
                  SizedBox(
                    width: double.infinity,
                    height: SizeConfig.screenHeight / 3.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 23.467),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3rd',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight / 93.867,),
                              CircleAvatar(
                                radius: SizeConfig.screenWidth / 10.667,
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(height: SizeConfig.screenHeight / 93.867,),
                              Text(
                                'Pola wagih',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600),),
                              SizedBox(height: SizeConfig.screenHeight / 93.867,),
                              Text(
                                '249',
                                style: TextStyle(
                                    color: AppColors.greenColor,
                                    fontSize: 12.5 * SizeConfig.fontSizeScale,
                                    fontWeight: FontWeight.w600
                                ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth / 160,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '1st', style: TextStyle(
                                color: Colors.amber,
                                fontSize: 13.75 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w700
                            ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight / 93.867,),
                            CircleAvatar(
                              radius: SizeConfig.screenWidth / 8,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(height: SizeConfig.screenHeight / 93.867,),
                            Text(
                              'Samar Youssef', style: TextStyle(
                                color: Colors.black,
                                fontSize: 10 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight / 93.867,),
                            Text(
                              '986', style: TextStyle(
                                color: Colors.amber,
                                fontSize: 13.75 * SizeConfig.fontSizeScale,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                          ],
                        ),
                        SizedBox(width: SizeConfig.screenWidth / 160,),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 23.467),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '2nd', style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13.75 * SizeConfig.fontSizeScale,
                                  fontWeight: FontWeight.w700
                              ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight / 93.867,),
                              CircleAvatar(
                                radius: SizeConfig.screenWidth / 10.667,
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(height: SizeConfig.screenHeight / 93.867,),
                              Text(
                                'Yara Kamal', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10 * SizeConfig.fontSizeScale,
                                  fontWeight: FontWeight.w600
                              ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                '265', style: TextStyle(
                                  color: AppColors.greenColor,
                                  fontSize: 12.5 * SizeConfig.fontSizeScale,
                                  fontWeight: FontWeight.w600
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight / 31.289,),
                  Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 15,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 187.733),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text('4',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.5 * SizeConfig.fontSizeScale,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      Icon(Icons.arrow_drop_up, color: Colors.grey, size: SizeConfig.screenWidth / 19.2,),
                                    ],
                                  ),
                                  SizedBox(width: SizeConfig.screenWidth / 96,),
                                  SizedBox(
                                    width: SizeConfig.screenWidth / 1.2,
                                    height: SizeConfig.screenHeight / 13.804,
                                    child: Card(
                                      elevation: 5,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: CircleAvatar(
                                              radius: SizeConfig.screenWidth / 16,
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(width: SizeConfig.screenWidth / 48,),
                                          Center(
                                            child: Text(
                                              'Ahmed',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13.75 * SizeConfig.fontSizeScale,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 18),
                                              child: Text(
                                                '157',
                                                style: TextStyle(
                                                    color: AppColors.blueColor,
                                                    fontSize: 13.75 * SizeConfig.fontSizeScale,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_forward_ios, color: AppColors.greenColor, size: SizeConfig.screenWidth / 16,),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
