import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Constants/colorConstants.dart';

class ExplorePostLoadingComponent extends StatelessWidget {
  const ExplorePostLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 228,
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
                height: 154,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(4), bottom: Radius.zero),
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: 150,
                height: 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
              ),
              Container(
                height: 45,
                width: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: 80,
                      height: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
