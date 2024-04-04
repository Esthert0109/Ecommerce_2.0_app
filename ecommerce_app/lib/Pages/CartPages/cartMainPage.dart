import 'package:flutter/material.dart';

import '../../Constants/colorConstants.dart';

class CartMainPage extends StatefulWidget {
  const CartMainPage({super.key});

  @override
  State<CartMainPage> createState() => _CartMainPageState();
}

class _CartMainPageState extends State<CartMainPage> {
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
            child: Text("购物车"),
          ),
        ),
      ),
    );
  }
}
