import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';
import 'package:badges/badges.dart' as badges;

class InventorySelectionComponent extends StatefulWidget {
  final List<String> productImage;
  final List<String> productTitle;
  final List<String> productQuantity;
  final int selectedIndex;
  final Function(int) onTap;

  InventorySelectionComponent({
    Key? key,
    required this.productImage,
    required this.productTitle,
    required this.productQuantity,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<InventorySelectionComponent> createState() =>
      _InventorySelectionComponentState();
}

class _InventorySelectionComponentState
    extends State<InventorySelectionComponent> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: List.generate(
            widget.productTitle.length,
            (index) => GestureDetector(
                onTap: widget.productQuantity[index] != "0"
                    ? () {
                        setState(() {
                          widget.onTap(index);
                        });
                      }
                    : null,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  height: 48,
                  width: widget.productTitle[index].length >= 6
                      ? 160
                      : (widget.productTitle[index].length >= 5 ? 140 : 133),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: kInventorySelectionColor,
                    borderRadius: BorderRadius.circular(4),
                    border: widget.selectedIndex == index
                        ? Border.all(color: kMainOrangeColor, width: 1)
                        : Border.all(style: BorderStyle.none),
                  ),
                  child: badges.Badge(
                    showBadge:
                        widget.productQuantity[index] != "0" ? false : true,
                    position: badges.BadgePosition.topEnd(top: -15, end: -10),
                    badgeStyle: badges.BadgeStyle(
                        padding: EdgeInsets.all(6),
                        badgeColor: kBadgeColor1,
                        shape: badges.BadgeShape.square,
                        borderRadius: BorderRadius.circular(27)),
                    badgeContent: widget.productQuantity[index] == "0"
                        ? Text("缺货", style: tOrderPriceText1)
                        : Text(" "),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(widget.productImage[index]),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 8),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: widget.productTitle[index].length >= 6
                                    ? 95
                                    : (widget.productTitle[index].length >= 5
                                        ? 80
                                        : 60),
                                child: Text(
                                  widget.productTitle[index],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: widget.productQuantity[index] != "0"
                                      ? tTagUnselectionSelectedText
                                      : tInventoryUnselectionText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
