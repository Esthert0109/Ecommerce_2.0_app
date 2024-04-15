import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';
import 'package:badges/badges.dart' as badges;

class InventorySelectionComponent extends StatefulWidget {
  final String productImage;
  final String productTitle;
  final String price;
  final String productQuantity;
  InventorySelectionComponent({
    Key? key,
    required this.productImage,
    required this.productTitle,
    required this.price,
    required this.productQuantity,
  }) : super(key: key);

  @override
  State<InventorySelectionComponent> createState() =>
      _InventorySelectionComponentState();
}

class _InventorySelectionComponentState
    extends State<InventorySelectionComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 48,
      decoration: BoxDecoration(
        color: kInventorySelectionColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          badges.Badge(
            badgeContent: widget.productQuantity == "0"
                ? Text("缺货", style: tBadgesText)
                : Text(" "),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                            image: NetworkImage(widget.productImage),
                            fit: BoxFit.cover)),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(widget.productTitle),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(widget.price),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
