import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class InvitationComponent extends StatefulWidget {
  const InvitationComponent({super.key});

  @override
  State<InvitationComponent> createState() => _InvitationComponentState();
}

class _InvitationComponentState extends State<InvitationComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 40,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          border: Border.all(color: kBorderColor, width: 1),
          color: kMainWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Row(
        children: [
          SizedBox(width: 5),
          Text(
            "邀请朋友以获得积分",
            style: tPerkCardText2,
          ),
          Spacer(),
          Container(
            width: 45, // Adjust width as needed
            height: 30, // Adjust height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(49),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kPointCardButtonPrimaryColor,
                  kPointCardButtonSecondaryColor
                ],
              ),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              color: Colors.white,
              icon: ImageIcon(
                size: 30,
                AssetImage('assets/point/addFriend.png'),
              ),
              onPressed: () {
                print("touch");
              },
            ),
          ),
        ],
      ),
    );
  }
}
