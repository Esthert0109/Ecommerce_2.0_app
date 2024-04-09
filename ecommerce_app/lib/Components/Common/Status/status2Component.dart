import 'package:ecommerce_app/Pages/Examples/examplePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';
import '../../Common/Button/primaryButtonComponent.dart';
import 'package:ecommerce_app/Components/Common/Button/secondaryButtonComponent.dart';
import 'package:get/get.dart';

class PaymentStatusComponent extends StatefulWidget {
  final String title;
  final String image;
  final bool paymentSuccess;

  PaymentStatusComponent({
    Key? key,
    required this.title,
    required this.image,
    required this.paymentSuccess,
  }) : super(key: key);

  @override
  State<PaymentStatusComponent> createState() => _PaymentStatusComponentState();
}

class _PaymentStatusComponentState extends State<PaymentStatusComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: tStatusFieldText2,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            Container(
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                ),
              ),
            ),
            Text(
              widget.title,
              style: tStatusFieldText3,
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Container(
                  width: 161,
                  height: 36,
                  margin: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                  child: SecondaryButtonComponent(
                    buttonColor: kSecondaryButtonColor6,
                    buttonPressedColor: kSecondaryButtonPressedColor,
                    radius: 35,
                    borderColor: kSecondaryButtonColor,
                    borderWidth: 1,
                    buttonText: "返回",
                    buttonTextStyle: tSecondaryButtonText4,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: widget.paymentSuccess
                        ? PrimaryButtonComponent(
                            buttonColor: kPrimaryButtonColor,
                            buttonPressedColor: kPrimaryButtonPressedColor,
                            height: 36,
                            width: 161,
                            buttonText: "查看订单",
                            buttonTextStyle: tPrimaryButtonText2,
                            onPressed: () {},
                          )
                        : PrimaryButtonComponent(
                            buttonColor: kPrimaryButtonColor,
                            buttonPressedColor: kPrimaryButtonPressedColor,
                            height: 36,
                            width: 161,
                            buttonText: "再次尝试",
                            buttonTextStyle: tPrimaryButtonText2,
                            onPressed: () {},
                          )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
