import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Constants/textConstants.dart';

class DeliveryStatusComponent extends StatefulWidget {
  final bool isPay;
  final String status;

  DeliveryStatusComponent({
    super.key,
    required this.isPay,
    required this.status,
  });

  @override
  State<DeliveryStatusComponent> createState() =>
      _DeliveryStatusComponentState();
}

class _DeliveryStatusComponentState extends State<DeliveryStatusComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: kMainWhiteColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Image(
            image: AssetImage(
              widget.isPay ? receiving : paying,
            ),
            width: 42,
          ),
          SizedBox(width: 12),
          Text(
            widget.status,
            style: tPostInventoryPriceText2,
          ),
        ],
      ),
    );
  }
}

const String paying = "assets/status/paying.png";

const String receiving = "assets/status/receiving.png";
