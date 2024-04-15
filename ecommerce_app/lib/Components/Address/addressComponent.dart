import 'package:flutter/widgets.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class AddressComponent extends StatefulWidget {
  final bool isCreate;
  final String? name;
  final String? phone;
  final String? fullAddress;

  const AddressComponent({
    super.key,
    this.name,
    this.phone,
    this.fullAddress,
    required this.isCreate,
  });

  @override
  State<AddressComponent> createState() => _AddressComponentState();
}

class _AddressComponentState extends State<AddressComponent> {
  Color textColor = kSubmitButtonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 351,
        height: 78,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: kMainWhiteColor),
        child: !widget.isCreate
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 25,
                      child: Center(
                        child: Image.asset(
                          "assets/address/address.png",
                          height: 43,
                          width: 37,
                        ),
                      )),
                  Expanded(
                      flex: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: widget.name ?? "",
                                  style: tAddressNameText,
                                  children: [
                                TextSpan(
                                    text: " ${widget.phone}" ?? "",
                                    style: tAddressPhoneText)
                              ])),
                          Text(
                            widget.fullAddress ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: tFullAddressText,
                          )
                        ],
                      )),
                  Flexible(
                      flex: 15,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: GestureDetector(
                          onTapDown: (_) {
                            setState(() {
                              textColor = kSubmitButtonPressedColor;
                            });
                          },
                          onTapUp: (_) {
                            setState(() {
                              textColor = kSubmitButtonColor;
                            });
                          },
                          onTapCancel: () {
                            setState(() {
                              textColor = kSubmitButtonColor;
                            });
                          },
                          child: Text(
                            "编辑",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ))
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/address/createButton.png",
                            height: 18,
                            width: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "增加收货地址",
                              style: tCreateAddressText,
                            ),
                          )
                        ],
                      ))
                ],
              ));
  }
}
