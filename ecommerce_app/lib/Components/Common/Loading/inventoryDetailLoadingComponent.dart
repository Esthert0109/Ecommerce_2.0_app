import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';

class InventoryDetailLoadingComponent extends StatelessWidget {
  const InventoryDetailLoadingComponent({super.key});

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
          Container(
            width: 375,
            height: 375,
            color: Colors.white,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: 351,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            width: 351,
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.white),
          ),
        ],
      ),
    );
  }
}
