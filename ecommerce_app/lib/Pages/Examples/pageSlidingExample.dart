import 'package:flutter/material.dart';

import '../../Components/Common/Button/primaryButtonComponent.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class SlidePageExample extends StatelessWidget {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide Page Example'),
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildPage(Colors.blue, 'Page 1', () {
            _controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }),
          _buildPage(Colors.green, 'Page 2', () {
            _controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }),
          _buildPage(Colors.orange, 'Page 3', () {
            _controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }),
        ],
      ),
    );
  }

  Widget _buildPage(Color color, String text, VoidCallback onPressed) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 294,
              height: 50,
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor4,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 50,
                width: 294,
                buttonText: "Next Page",
                buttonTextStyle: tPrimaryButtonText,
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
