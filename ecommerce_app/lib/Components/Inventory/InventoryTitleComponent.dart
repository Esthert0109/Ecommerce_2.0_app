import 'package:flutter/material.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class InventoryTitleComponent extends StatefulWidget {
  final String productTitle;
  final String price;
  final String productSold;

  InventoryTitleComponent({
    Key? key, // Added Key? key
    required this.productTitle,
    required this.price,
    required this.productSold,
  }) : super(key: key);

  @override
  State<InventoryTitleComponent> createState() =>
      _InventoryTitleComponentState();
}

class _InventoryTitleComponentState extends State<InventoryTitleComponent> {
  bool _favoriteClick = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 350,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: Column(
          children: [
            Text(
              widget.productTitle,
              style: tStatusSelectionTitleText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "RM",
                    style: tPostInventoryPriceText3,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.price,
                    style: tPostInventoryPriceText4,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.productSold, style: tPostInventoryPriceText5),
                  SizedBox(
                    width: 5,
                  ),
                  Text("已售", style: tPostInventoryPriceText5),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      highlightColor: Colors.transparent,
                      padding: EdgeInsets.only(top: 18),
                      icon: Icon(
                        size: 24,
                        _favoriteClick
                            ? Icons.favorite_border_outlined
                            : Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          _favoriteClick = !_favoriteClick;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
