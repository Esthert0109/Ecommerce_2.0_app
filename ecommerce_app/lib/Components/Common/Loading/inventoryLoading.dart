import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';

class InventoryLoadingComponent extends StatelessWidget {
  const InventoryLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: 170,
      child: Shimmer.fromColors(
        baseColor: kMainLoadingColor,
        highlightColor: kSecondaryLoadingColor,
        enabled: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 170,
              height: 169,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: 150,
              height: 16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
            ),
            Container(
              width: 100,
              height: 16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
