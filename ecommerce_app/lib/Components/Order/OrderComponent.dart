import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class OrderComponents extends StatefulWidget {
  final String orderImg;
  final String orderTitle;
  final String orderPrice;
  final String orderSelection;
  final String orderQuantity;
  final bool isPoint;
  final bool isProcess;

  OrderComponents({
    super.key,
    required this.orderImg,
    required this.orderTitle,
    required this.orderPrice,
    required this.orderSelection,
    required this.orderQuantity,
    required this.isPoint,
    required this.isProcess,
  });

  @override
  State<OrderComponents> createState() => _OrderComponentsState();
}

class _OrderComponentsState extends State<OrderComponents> {
  int count = 123;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      width: 351,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: kMainWhiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: NetworkImage(widget.orderImg), fit: BoxFit.cover)),
            ),
          ),
          Flexible(
            flex: 7,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      widget.orderTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: tPostInventoryTitleText,
                    ),
                  ),
                  Flexible(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 55,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: kInventorySelectionColor),
                              child: Text(
                                widget.orderSelection,
                                style: tOrderPriceText1,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            widget.isProcess
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "RM",
                                        style: tOrderPriceText2,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.only(right: 5, top: 5),
                                          child: Text(
                                            widget.orderPrice,
                                            style: tOrderPriceText3,
                                          )),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      widget.isPoint
                                          ? Container(
                                              margin: EdgeInsets.only(
                                                  right: 5, top: 5),
                                              child: Text(
                                                widget.orderPrice,
                                                style:
                                                    tStatusSelectionTitleText,
                                              ))
                                          : Text("RM", style: tOrderPriceText1),
                                      widget.isPoint
                                          ? Text(
                                              "积分",
                                              style: tOrderPriceText1,
                                            )
                                          : Container(
                                              margin: EdgeInsets.only(
                                                  left: 5, top: 5),
                                              child: Text(
                                                widget.orderPrice,
                                                style: tPostInventoryPriceText2,
                                              ),
                                            ),
                                    ],
                                  ),
                            Spacer(),
                            widget.isProcess
                                ? Row(
                                    children: [
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: kBackgroundGradientEnd,
                                          borderRadius:
                                              BorderRadius.circular(49),
                                        ),
                                        child: IconButton(
                                          padding: EdgeInsets.only(bottom: 8),
                                          icon: Icon(Icons.remove,
                                              size: 18,
                                              color: kSecondaryButtonColor3),
                                          onPressed: () {
                                            setState(() {
                                              if (count > 0) {
                                                count--; // Decrement count (prevent going negative)
                                              }
                                            });
                                          },
                                        ),
                                      ),

                                      // Plus Icon
                                      SizedBox(width: 8),
                                      // Number Display
                                      Text(
                                        count
                                            .toString(), // Display current count
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: kBackgroundGradientEnd,
                                          borderRadius:
                                              BorderRadius.circular(49),
                                        ),
                                        child: IconButton(
                                          padding: EdgeInsets.only(bottom: 8),
                                          icon: Icon(Icons.add,
                                              size: 18,
                                              color: kSecondaryButtonColor3),
                                          onPressed: () {
                                            setState(() {
                                              count++; // Increment count
                                            });
                                          },
                                        ),
                                      ),

                                      // Minus Icon
                                    ],
                                  )
                                : Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text("数量: ",
                                            style: tOrderPriceText1),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.only(left: 5, top: 5),
                                          child: Text(widget.orderQuantity,
                                              style: tPostInventoryPriceText2)),
                                    ],
                                  ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
