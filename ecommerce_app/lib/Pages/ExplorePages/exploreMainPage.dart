import 'package:ecommerce_app/Pages/Examples/examplePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../Components/Common/Button/submitButtonComponent.dart';
import '../../Components/Common/Loading/addressLoadingComponent.dart';
import '../../Components/Common/Loading/orderLoadingComponent.dart';
import '../../Components/Common/Selection/orderStatusSelectionComponent.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';
import 'package:badges/badges.dart' as badges;

class ExploreMainPage extends StatefulWidget {
  const ExploreMainPage({super.key});

  @override
  State<ExploreMainPage> createState() => _ExploreMainPageState();
}

class _ExploreMainPageState extends State<ExploreMainPage> {
  bool isDisable = true;
  Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    // standard size
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [kBackgroundGradientStart, kBackgroundGradientEnd],
                  stops: [0.0, 0.3])),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: SubmitButtonComponent(
                        buttonText: "Example Page",
                        buttonTextStyle: tSubmitButtonText,
                        onPressed: () {
                          Get.to(() => ExamplesPage(),
                              transition: Transition.rightToLeftWithFade);
                        },
                        isLoading: false,
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
