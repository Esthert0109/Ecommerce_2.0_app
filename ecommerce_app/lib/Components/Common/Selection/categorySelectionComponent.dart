import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class CategorySelectionComponent extends StatefulWidget {
  final List<String> tags;
  final int selectedIndex;
  final Function(int) onTap;

  const CategorySelectionComponent(
      {super.key,
      required this.tags,
      required this.selectedIndex,
      required this.onTap});

  @override
  State<CategorySelectionComponent> createState() =>
      _TagSelectionComponentState();
}

class _TagSelectionComponentState extends State<CategorySelectionComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            4,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  widget.onTap(index);
                });
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 15, 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Text(
                  widget.tags[index],
                  style: widget.selectedIndex == index
                      ? tCategorySelectionSelectedText
                      : tCategoryUnselectionSelectedText,
                ),
              ),
            ),
          )),
    );
  }
}
