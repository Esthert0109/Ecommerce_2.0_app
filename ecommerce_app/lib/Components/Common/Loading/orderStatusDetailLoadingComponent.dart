import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';
import 'addressLoadingComponent.dart';
import 'orderLoadingComponent.dart';

class OrderStatusDetailLoadingComponent extends StatelessWidget {
  const OrderStatusDetailLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kMainLoadingColor,
      highlightColor: kSecondaryLoadingColor,
      enabled: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AddressLoadingComponent(),
          Container(
            width: 351,
            height: 62,
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
          Container(
            width: 351,
            height: 133,
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
              2,
              (index) => OrderLoadingComponent(),
            ),
          ),
          Container(
            width: 351,
            height: 98,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.white),
          ),
        ],
      ),
    );
  }
}
