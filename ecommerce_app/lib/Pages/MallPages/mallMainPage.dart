import 'package:flutter/material.dart';

import '../../Components/Common/Selection/titleComponent.dart';
import '../../Constants/colorConstants.dart';

class MallMainPage extends StatefulWidget {
  const MallMainPage({super.key});

  @override
  State<MallMainPage> createState() => _MallMainPageState();
}

class _MallMainPageState extends State<MallMainPage> {
  final PageController _controller = PageController();
  int titleSelection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
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
                    titles: ["商城", "分类"],
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 800,
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
              child: Column(
                children: [
                  Text("商城商城商城商城商城商城商城商城商城商城"),
                  Text("商城商城商城商城商城商城商城商城商城商城"),
                  Text("商城商城商城商城商城商城商城商城商城商城"),
                  Text("商城商城商城商城商城商城商城商城商城商城"),
                  Text("商城商城商城商城商城商城商城商城商城商城"),
                  Text("商城商城商城商城商城商城商城商城商城商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                  Text("商城"),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 800,
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
              child: Column(
                children: [
                  Text("分类分类分类分类分类分类分类分类分类分类"),
                  Text("分类分类分类分类分类分类分类分类分类分类"),
                  Text("分类分类分类分类分类分类分类分类分类分类"),
                  Text("分类分类分类分类分类分类分类分类分类分类"),
                  Text("分类分类分类分类分类分类分类分类分类分类"),
                  Text("分类分类分类分类分类分类分类分类分类分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                  Text("分类"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
