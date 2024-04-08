import 'package:flutter/material.dart';

import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class TitleComponent extends StatefulWidget {
  final List<String> titles;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isCart;

  const TitleComponent(
      {super.key, required this.titles,
      required this.selectedIndex,
      required this.onTap,
      required this.isCart});

  @override
  State<TitleComponent> createState() => _TitleComponentState();
}

class _TitleComponentState extends State<TitleComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          widget.titles.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                widget.onTap(index);
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: widget.isCart ? 70 : 48,
                height: 32,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: widget.isCart ? 70 : 48,
                        height: 10,
                        color: widget.selectedIndex == index
                            ? kTitleSelectedColor
                            : kTitleUnselectedColor,
                        curve: Curves.easeIn,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        widget.titles[index],
                        style: widget.selectedIndex == index
                            ? tTitleSelectedText
                            : tTitleUnselectedText,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
