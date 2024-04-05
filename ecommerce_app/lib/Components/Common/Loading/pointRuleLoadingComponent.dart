import 'package:ecommerce_app/Constants/colorConstants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PointRuleLoadingComponent extends StatelessWidget {
  const PointRuleLoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      height: 250,
      child: Shimmer.fromColors(
        baseColor: kMainLoadingColor,
        highlightColor: kSecondaryLoadingColor,
        enabled: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      width: 80,
                      height: 22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                    Column(
                      children: List.generate(
                        2,
                        (index) => Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          width: 300,
                          height: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
