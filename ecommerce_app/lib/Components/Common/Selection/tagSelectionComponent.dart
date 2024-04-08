import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class TagSelectionComponent extends StatefulWidget {
  final List<String> tags;
  final int selectedIndex;
  final Function(int) onTap;

  const TagSelectionComponent(
      {super.key,
      required this.tags,
      required this.selectedIndex,
      required this.onTap});

  @override
  State<TagSelectionComponent> createState() => _TagSelectionComponentState();
}

class _TagSelectionComponentState extends State<TagSelectionComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            3,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  widget.onTap(index);
                });
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 15, 5),
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                        color: widget.selectedIndex == index
                            ? kTagSelectedColor
                            : kTagUnselectedColor,
                        width: 1.6)),
                child: Text(
                  widget.tags[index],
                  style: widget.selectedIndex == index
                      ? tTagSelectionSelectedText
                      : tTagUnselectionSelectedText,
                ),
              ),
            ),
          )),
    );
  }
}
