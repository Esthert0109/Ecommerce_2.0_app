import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';

class PointLoadingComponent extends StatelessWidget {
  const PointLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 46,
        width: 327,
        child: Shimmer.fromColors(
          baseColor: kMainLoadingColor,
          highlightColor: kSecondaryLoadingColor,
          enabled: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
              ),
              Container(
                width: 300,
                height: 18,
                margin: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
