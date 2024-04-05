import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';

class AddressLoadingComponent extends StatelessWidget {
  const AddressLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      width: 351,
      child: Shimmer.fromColors(
        baseColor: kMainLoadingColor,
        highlightColor: kSecondaryLoadingColor,
        enabled: true,
        child: Container(
          width: 78,
          height: 351,
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Colors.white),
        ),
      ),
    );
  }
}
