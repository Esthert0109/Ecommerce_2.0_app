import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class PostInventoryComponent extends StatefulWidget {
  final String inventoryImg;
  final String inventoryTitle;
  final String inventoryPrice;

  const PostInventoryComponent({
    super.key,
    required this.inventoryImg,
    required this.inventoryTitle,
    required this.inventoryPrice,
  });

  @override
  State<PostInventoryComponent> createState() => _PostInventoryComponentState();
}

class _PostInventoryComponentState extends State<PostInventoryComponent> {
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
                      image: NetworkImage(widget.inventoryImg),
                      fit: BoxFit.cover)),
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
                      widget.inventoryTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: tPostInventoryTitleText,
                    ),
                  ),
                  Flexible(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "RM ",
                                  style: tPostInventoryPriceText1,
                                  children: [
                                    TextSpan(
                                        text: widget.inventoryPrice,
                                        style: tPostInventoryPriceText2)
                                  ]),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("press share");
                              },
                              child: Image.asset(
                                "assets/inventory/cart.png",
                                width: 19,
                                height: 19.5,
                              ),
                            )
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
