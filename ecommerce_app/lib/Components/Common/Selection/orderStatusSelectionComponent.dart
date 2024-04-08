import 'package:ecommerce_app/Constants/colorConstants.dart';
import 'package:flutter/widgets.dart';

import '../../../Constants/textConstants.dart';
import 'package:badges/badges.dart' as badges;

class OrderStatusSelectionComponent extends StatefulWidget {
  OrderStatusSelectionComponent({super.key});

  @override
  State<OrderStatusSelectionComponent> createState() =>
      _OrderStatusSelectionComponentState();
}

class _OrderStatusSelectionComponentState
    extends State<OrderStatusSelectionComponent> {
  List<String> orderStatusList = [
    "assets/selection/allOrder.png",
    "assets/selection/orderWaitingPayment.png",
    "assets/selection/orderWaitingOutDeliver.png",
    "assets/selection/orderWaitingReceive.png"
  ];

  List<String> orderStatusTextList = ["全部", "待付款", "待发货", "待收货"];
  List<String> badgesLabelList = ['5', '2', '3', "99+"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: kBorderColor, width: 1),
          color: kMainWhiteColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "我的订单",
            style: tTagSelectionSelectedText,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {
                      print(orderStatusTextList[index] + " press");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        badges.Badge(
                          badgeContent: Text(
                            badgesLabelList[index],
                            style: tBadgesText,
                          ),
                          position:
                              badges.BadgePosition.topEnd(top: -10, end: -10),
                          badgeStyle: badges.BadgeStyle(
                              badgeColor: kBadgeColor,
                              padding: EdgeInsets.all(5)),
                          child: Image.asset(
                            orderStatusList[index],
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Text(
                          orderStatusTextList[index],
                          style: tOrderStatusSelectionText,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
