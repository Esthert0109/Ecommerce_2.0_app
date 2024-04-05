import 'package:flutter/material.dart';

import '../../Constants/colorConstants.dart';

class MallMainPage extends StatefulWidget {
  const MallMainPage({super.key});

  @override
  State<MallMainPage> createState() => _MallMainPageState();
}

class _MallMainPageState extends State<MallMainPage> {
  @override
  Widget build(BuildContext context) {
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
            child: Text("商城"),
          ),
        ),
      ),
    );
  }
}
