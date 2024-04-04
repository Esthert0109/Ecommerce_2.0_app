import 'package:flutter/material.dart';

import '../../Constants/colorConstants.dart';

class PerkMainPage extends StatefulWidget {
  const PerkMainPage({super.key});

  @override
  State<PerkMainPage> createState() => _PerkMainPageState();
}

class _PerkMainPageState extends State<PerkMainPage> {
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
                  stops: [0.0, 0.5])),
          child: Center(
            child: Text("福利"),
          ),
        ),
      ),
    );
  }
}
