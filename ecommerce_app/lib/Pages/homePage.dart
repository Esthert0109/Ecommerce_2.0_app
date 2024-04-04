import 'package:ecommerce_app/Constants/colorConstants.dart';
import 'package:ecommerce_app/Pages/ExplorePages/exploreMainPage.dart';
import 'package:ecommerce_app/Pages/MallPages/mallMainPage.dart';
import 'package:ecommerce_app/Pages/PerkPages/perkMainPage.dart';
import 'package:ecommerce_app/Pages/ProfilePages/profileMainPage.dart';
import 'package:flutter/material.dart';

import '../Constants/textConstants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'CartPages/cartMainPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectionIndex = 0;
  double iconSize = 24;
  static const List<Widget> _homePageOptions = <Widget>[
    ExploreMainPage(),
    MallMainPage(),
    PerkMainPage(),
    CartMainPage(),
    ProfileMainPage(),
  ];

  void homePageOnTap(int option) {
    setState(() {
      _selectionIndex = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _homePageOptions.elementAt(_selectionIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectionIndex == 0
                  ? Image.asset(
                      'assets/bottomNaviBar/explorePage2.png',
                      width: iconSize,
                      height: iconSize,
                    )
                  : Image.asset(
                      'assets/bottomNaviBar/explorePage.png',
                      width: iconSize,
                      height: iconSize,
                    ),
              label: AppLocalizations.of(context)!.explore),
          BottomNavigationBarItem(
              icon: _selectionIndex == 1
                  ? Image.asset(
                      'assets/bottomNaviBar/mallPage2.png',
                      width: iconSize,
                      height: iconSize,
                    )
                  : Image.asset(
                      'assets/bottomNaviBar/mallPage.png',
                      width: iconSize,
                      height: iconSize,
                    ),
              label: AppLocalizations.of(context)!.mall),
          BottomNavigationBarItem(
              icon: _selectionIndex == 2
                  ? Image.asset(
                      'assets/bottomNaviBar/perkPage.png',
                      width: 30,
                      height: 30,
                    )
                  : Image.asset(
                      'assets/bottomNaviBar/perkPage.png',
                      width: 30,
                      height: 30,
                    ),
              label: AppLocalizations.of(context)!.perk),
          BottomNavigationBarItem(
              icon: _selectionIndex == 3
                  ? Image.asset(
                      'assets/bottomNaviBar/cartPage.png',
                      width: iconSize,
                      height: iconSize,
                    )
                  : Image.asset(
                      'assets/bottomNaviBar/cartPage.png',
                      width: iconSize,
                      height: iconSize,
                    ),
              label: AppLocalizations.of(context)!.cart),
          BottomNavigationBarItem(
              icon: _selectionIndex == 4
                  ? Image.asset(
                      'assets/bottomNaviBar/myPage2.png',
                      width: iconSize,
                      height: iconSize,
                    )
                  : Image.asset(
                      'assets/bottomNaviBar/myPage.png',
                      width: iconSize,
                      height: iconSize,
                    ),
              label: AppLocalizations.of(context)!.mine),
        ],
        backgroundColor: kMainWhiteColor,
        currentIndex: _selectionIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: _selectionIndex == 2
            ? kBottomNaviBarTextColor3
            : kBottomNaviBarTextColor,
        unselectedItemColor: kBottomNaviBarTextColor2,
        selectedLabelStyle:
            _selectionIndex == 2 ? tBottomNaviBarText3 : tBottomNaviBarText2,
        unselectedLabelStyle: tBottomNaviBarText2,
        onTap: homePageOnTap,
      ),
    );
  }
}
