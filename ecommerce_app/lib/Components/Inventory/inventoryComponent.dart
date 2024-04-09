import 'package:flutter/material.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class InventoryComponent extends StatefulWidget {
  final bool isPerk;
  final bool isDiscount;
  final bool isCategory;
  final String inventoryImg;
  final String inventoryTitle;
  final String? inventoryPrice;
  final String? inventoryPoint;
  final String? inventoryDiscountPrice;
  final String? inventorySold;

  const InventoryComponent({
    super.key,
    required this.isPerk,
    required this.isDiscount,
    required this.isCategory,
    required this.inventoryImg,
    required this.inventoryTitle,
    this.inventoryPrice,
    this.inventoryPoint,
    this.inventoryDiscountPrice,
    this.inventorySold,
  });

  @override
  State<InventoryComponent> createState() => _InventoryComponentState();
}

class _InventoryComponentState extends State<InventoryComponent> {
  @override
  Widget build(BuildContext context) {
    String inventoryPrice = widget.inventoryPrice ?? "0.00";
    String inventoryPoint = widget.inventoryPoint ?? "0";
    String inventoryDiscountPrice = widget.inventoryDiscountPrice ?? "0.00";
    String inventorySold = widget.inventorySold ?? "0";

    return Container(
      width: 170,
      height: 215,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 169,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kMainLoadingColor,
                image: DecorationImage(
                    image: NetworkImage(widget.inventoryImg),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    widget.inventoryTitle,
                    style: tPostInventoryTitleText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          widget.isPerk
                              ? RichText(
                                  text: TextSpan(
                                      text: inventoryPoint,
                                      style: tPostInventoryPriceText4,
                                      children: [
                                      TextSpan(
                                          text: " 积分",
                                          style: tPostInventoryPriceText3)
                                    ]))
                              : widget.isDiscount
                                  ? Row(
                                      children: [
                                        RichText(
                                            text: TextSpan(
                                                text: "RM ",
                                                style: tDiscountText1,
                                                children: [
                                              TextSpan(
                                                  text: inventoryPrice,
                                                  style: tDiscountText2)
                                            ])),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: RichText(
                                              text: TextSpan(
                                                  text: "RM ",
                                                  style:
                                                      tPostInventoryPriceText3,
                                                  children: [
                                                TextSpan(
                                                    text:
                                                        inventoryDiscountPrice,
                                                    style:
                                                        tPostInventoryPriceText4)
                                              ])),
                                        ),
                                      ],
                                    )
                                  : RichText(
                                      text: TextSpan(
                                          text: "RM ",
                                          style: tPostInventoryPriceText3,
                                          children: [
                                          TextSpan(
                                              text: inventoryPrice,
                                              style: tPostInventoryPriceText4)
                                        ])),
                          widget.isCategory ||
                                  widget.isPerk ||
                                  widget.isDiscount
                              ? Container()
                              : RichText(
                                  text: TextSpan(
                                      text: inventorySold,
                                      style: tInventorySoldText,
                                      children: [
                                      TextSpan(
                                          text: " 已售",
                                          style: tInventorySoldText)
                                    ]))
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
