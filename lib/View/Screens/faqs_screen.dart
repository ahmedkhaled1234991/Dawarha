import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FaqsScreen extends StatefulWidget {

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {

  bool activeExpansion = false;

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
              'الأسئلة الشائعة',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.75 * SizeConfig.fontSizeScale,
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
        padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight / 62.578),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight / 3.129,
              child: Image.asset("assets/images/Faqs_image.png", fit: BoxFit.cover,),
            ),
            SizedBox(height: SizeConfig.screenHeight / 23.467,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ExpansionTile(
                  title: Text(
                        'ماكينة دورها؟',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.25 * SizeConfig.fontSizeScale,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                leading: Icon(Icons.help, color: (activeExpansion)? Colors.green : Colors.grey, size: SizeConfig.screenWidth / 16,),
                onExpansionChanged: (value){
                  if(value){
                    setState(() {
                      activeExpansion = true;
                    });
                  }else {
                    setState(() {
                      activeExpansion = false;
                    });
                  }
                },
                childrenPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 26.667),
                expandedAlignment: Alignment.centerRight,
                iconColor: Colors.green,
                collapsedIconColor: Colors.grey,
                controlAffinity: ListTileControlAffinity.trailing,
                children: [
                  Text('ماكينة هى دورها هى أول آلة بيع عكسى فى مصر\nوالشرق الأوسط تعمل بالذكاء الاصطناعى ورؤية\nالكمبيوتر التى تساعد فى فرز النفايات من المصدر',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15 * SizeConfig.fontSizeScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
