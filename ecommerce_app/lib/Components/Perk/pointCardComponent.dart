import 'package:flutter/cupertino.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class PointCardComponent extends StatefulWidget {
  final bool isShareCard;
  final String? point;

  PointCardComponent({super.key, required this.isShareCard, this.point});

  @override
  State<PointCardComponent> createState() => _PointCardComponentState();
}

class _PointCardComponentState extends State<PointCardComponent> {
  Color buttonColor1 = kPointCardButtonPrimaryColor;
  Color buttonColor2 = kPointCardButtonSecondaryColor;

  @override
  Widget build(BuildContext context) {
    String point = widget.point ?? "0";
    return Container(
        height: 99,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
                image: AssetImage("assets/perk/perkCard.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.isShareCard
                ? Column(
                    children: [
                      Text(
                        "邀请朋友以",
                        style: tPerkCardText2,
                      ),
                      Text(
                        "获得积分",
                        style: tPerkCardText2,
                      )
                    ],
                  )
                : RichText(
                    text: TextSpan(
                        text: point,
                        style: tPerkCardText1,
                        children: [
                          TextSpan(text: " 积分", style: tPerkCardText2)
                        ]),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    buttonColor1 = kPointCardButtonPrimaryPressedColor;
                    buttonColor2 = kPointCardButtonSecondaryPressedColor;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    buttonColor1 = kPointCardButtonPrimaryColor;
                    buttonColor2 = kPointCardButtonSecondaryColor;
                  });
                },
                onTapCancel: () {
                  setState(() {
                    buttonColor1 = kPointCardButtonPrimaryColor;
                    buttonColor2 = kPointCardButtonSecondaryColor;
                  });
                },
                child: AnimatedContainer(
                  height: 28,
                  width: 137,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(49),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [buttonColor1, buttonColor2],
                          stops: [0.0, 1])),
                  duration: Duration(milliseconds: 200),
                  child: Center(
                      child: Text(
                    widget.isShareCard ? "分享" : "查看兑换",
                    style: tPerkButtonText,
                  )),
                ),
              ),
            )
          ],
        ));
  }
}
