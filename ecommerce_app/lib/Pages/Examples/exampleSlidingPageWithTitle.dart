import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../Components/Common/Selection/titleComponent.dart';
import '../../Constants/colorConstants.dart';

class ExampleSlidingPageWithTitle extends StatefulWidget {
  const ExampleSlidingPageWithTitle({super.key});

  @override
  State<ExampleSlidingPageWithTitle> createState() =>
      _ExampleSlidingPageWithTitleState();
}

class _ExampleSlidingPageWithTitleState
    extends State<ExampleSlidingPageWithTitle> {
  final PageController _controller = PageController();
  int titleSelection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: kBackgroundGradientStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TitleComponent(
                    titles: ["全部", "待发货", "待收货", "已完成"],
                    selectedIndex: titleSelection,
                    isCart: false,
                    onTap: (index) {
                      setState(() {
                        titleSelection = index;
                        _controller.animateToPage(index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            titleSelection = index;
          });
        },
        children: [
          SingleChildScrollView(
            child: Container(
              height: 900,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    kBackgroundGradientStart,
                    kBackgroundGradientEnd
                  ],
                      stops: [
                    0.0,
                    0.3
                  ])),
              child: Center(
                child: Text("福利"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 900,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    kBackgroundGradientStart,
                    kBackgroundGradientEnd
                  ],
                      stops: [
                    0.0,
                    0.3
                  ])),
              child: Center(
                child: Text("福利2"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 900,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    kBackgroundGradientStart,
                    kBackgroundGradientEnd
                  ],
                      stops: [
                    0.0,
                    0.3
                  ])),
              child: Center(
                child: Text("福利3"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 900,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    kBackgroundGradientStart,
                    kBackgroundGradientEnd
                  ],
                      stops: [
                    0.0,
                    0.3
                  ])),
              child: Center(
                child: Text("福利4"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
