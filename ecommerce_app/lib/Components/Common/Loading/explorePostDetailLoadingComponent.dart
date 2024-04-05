import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';

class ExplorePostDetailLoadingComponent extends StatelessWidget {
  const ExplorePostDetailLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kMainLoadingColor,
      highlightColor: kSecondaryLoadingColor,
      enabled: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 375,
            height: 250,
            color: Colors.white,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            width: 250,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            width: 370,
            height: 14,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            width: 370,
            height: 14,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            width: 250,
            height: 14,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 351,
            height: 109,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
          ),
        ],
      ),
    );
  }
}
