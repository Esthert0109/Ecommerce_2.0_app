import 'package:flutter/material.dart';

import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class InventorySelectionComponent2 extends StatefulWidget {
  final List<String> selections;
  final int selectedIndex;
  final Function(int) onTap;

  const InventorySelectionComponent2(
      {super.key,
      required this.selections,
      required this.selectedIndex,
      required this.onTap});

  @override
  State<InventorySelectionComponent2> createState() =>
      _InventorySelectionComponent2State();
}

class _InventorySelectionComponent2State
    extends State<InventorySelectionComponent2> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      widget.selections.length,
      (index) => GestureDetector(
        onTap: () {
          setState(() {
            widget.onTap(index);
          });
        },
        child: Container(
          width: 351,
          height: 30,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: widget.selectedIndex == index
                  ? Border.all(color: kMainOrangeColor, width: 1)
                  : Border.all(style: BorderStyle.none),
              color: kInventorySelectionColor),
          child: Text(
            widget.selections[index],
            style: tInventorySelectionTitleText,
          ),
        ),
      ),
    ));
  }
}
