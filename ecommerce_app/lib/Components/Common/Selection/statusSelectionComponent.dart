import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class StatusSelectionComponent extends StatefulWidget {
  final List<String> tags;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isCart;

  const StatusSelectionComponent(
      {super.key,
      required this.tags,
      required this.selectedIndex,
      required this.onTap,
      required this.isCart});

  @override
  State<StatusSelectionComponent> createState() =>
      _TagSelectionComponentState();
}

class _TagSelectionComponentState extends State<StatusSelectionComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            widget.tags.length,
            (index) {
              final words = widget.tags[index];
              final isLong = words.length > 2;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    widget.onTap(index);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 15, 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: SizedBox(
                    width: 50,
                    height: 32,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: AnimatedContainer(
                            margin: isLong
                                ? EdgeInsets.only(bottom: 10)
                                : EdgeInsets.only(
                                    bottom: 10, left: 8, right: 8),
                            duration: Duration(milliseconds: 300),
                            width: 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: widget.selectedIndex == index
                                  ? kTitleSelectedColor
                                  : kTitleUnselectedColor,
                            ),
                            height: 5,
                            curve: Curves.easeIn,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            widget.tags[index],
                            style: widget.selectedIndex == index
                                ? tStatusSelectionTitleText
                                : tStatusUnselectionTitleText,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
