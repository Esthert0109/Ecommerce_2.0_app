import 'package:flutter/widgets.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class AddressSecondaryComponent extends StatefulWidget {
  final String fullAddress;
  final String name;
  final String phone;

  const AddressSecondaryComponent({
    super.key,
    required this.fullAddress,
    required this.name,
    required this.phone,
  });

  @override
  State<AddressSecondaryComponent> createState() =>
      _AddressSecondaryComponentState();
}

class _AddressSecondaryComponentState extends State<AddressSecondaryComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 351,
      decoration: BoxDecoration(
          color: kMainWhiteColor, borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/address/map.png",
                width: 19.5,
                height: 24,
              ),
            ),
          ),
          Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Text(
                        widget.fullAddress,
                        style: tAddressNameText,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: RichText(
                          text: TextSpan(
                              text: widget.name,
                              style: tOrderStatusAddressNameText,
                              children: [
                            TextSpan(
                                text: " ${widget.phone}",
                                style: tOrderStatusAddressNameText)
                          ])),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
