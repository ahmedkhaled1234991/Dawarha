import 'package:dawarha/View/Screens/ranks_screen.dart';
import 'package:dawarha/View/Screens/home_screen.dart';
import 'package:dawarha/View/Screens/map_screen.dart';
import 'package:dawarha/View/Screens/wallet_screen.dart';
import 'package:dawarha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {

  int selectedItemPosition = 0;
  List screens = [HomeScreen(), WalletScreen(), RanksScreen(), MapScreen()];

  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: widget.screens[widget.selectedItemPosition],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
            ),
          ],
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: BottomNavigationBar(
            currentIndex: widget.selectedItemPosition,
            onTap: (index) => setState(() => widget.selectedItemPosition = index),
            backgroundColor: Colors.white,
            elevation: 8,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 15 * SizeConfig.fontSizeScale,
            selectedItemColor: AppColors.greenColor,
            unselectedFontSize: 12.5 * SizeConfig.fontSizeScale,
            unselectedItemColor: Colors.grey.shade600,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home, color: AppColors.greenColor, size: SizeConfig.screenHeight / 26.819),
                icon: Icon(Icons.home, color: Colors.grey.shade600, size: SizeConfig.screenHeight / 26.819),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/icons/Wallet_icon.svg', width: SizeConfig.screenHeight / 31.289,),
                icon: SvgPicture.asset('assets/icons/Wallet_icon.svg', color: Colors.grey.shade600, width: SizeConfig.screenHeight / 31.289,),
                label: 'المحفظة',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/icons/Arrange_icon.svg', width: SizeConfig.screenHeight / 31.289,),
                icon: SvgPicture.asset('assets/icons/Arrange_icon.svg', color: Colors.grey.shade600, width: SizeConfig.screenHeight / 31.289,),
                label: 'الترتيب',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset('assets/icons/Location_icon.svg', width: SizeConfig.screenHeight / 31.289,),
                icon: SvgPicture.asset('assets/icons/Location_icon.svg', color: Colors.grey.shade600, width: SizeConfig.screenHeight / 31.289,),
                label: 'الخريطة',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
