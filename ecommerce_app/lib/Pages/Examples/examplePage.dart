import 'package:ecommerce_app/Components/Common/Button/secondaryButtonComponent.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../Components/Common/Button/primaryButtonComponent.dart';
import '../../Components/Common/Button/submitButtonComponent.dart';
import '../../Components/Common/Loading/explorePostLoadingComponent.dart';
import '../../Components/Common/Selection/titleComponent.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class ExamplesPage extends StatefulWidget {
  @override
  State<ExamplesPage> createState() => _ExamplesPageState();
}

class _ExamplesPageState extends State<ExamplesPage> {
  int titleSelection = 0;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Examples'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Submit Button: "),
            SubmitButtonComponent(
              buttonText: "确认",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {},
              isLoading: false,
            ),
            SubmitButtonComponent(
              buttonText: "返回登陆",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {},
              isLoading: false,
            ),
            SubmitButtonComponent(
              buttonText: "保存",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {},
              isLoading: false,
            ),
            Text("Disable Submit Button: "),
            SubmitButtonComponent(
              buttonText: "确认",
              buttonTextStyle: tSubmitButtonText,
              isLoading: false,
            ),
            Text("Submit Button Loading: "),
            SubmitButtonComponent(
              buttonText: "确认",
              buttonTextStyle: tSubmitButtonText,
              isLoading: true,
            ),
            SubmitButtonComponent(
              buttonText: "点击一下",
              buttonTextStyle: tSubmitButtonText,
              isLoading: _isLoading,
              onPressed: () {
                setState(() {
                  _isLoading = !_isLoading;
                });
              },
            ),
            Divider(),
            Text("Primary Button: "),
            Container(
              width: 294,
              height: 50,
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor4,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 50,
                width: 294,
                buttonText: "登录",
                buttonTextStyle: tPrimaryButtonText,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 42,
                width: 170,
                buttonText: "加入购物车",
                buttonTextStyle: tPrimaryButtonText2,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor2,
                buttonPressedColor: kPrimaryButtonPressedColor2,
                height: 42,
                width: 170,
                buttonText: "立即购买",
                buttonTextStyle: tPrimaryButtonText2,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 36,
                width: 140,
                buttonText: "确认订单",
                buttonTextStyle: tPrimaryButtonText3,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 36,
                width: 140,
                buttonText: "下单",
                buttonTextStyle: tPrimaryButtonText3,
                onPressed: () {},
              ),
            ),
            PrimaryButtonComponent(
              buttonColor: kPrimaryButtonColor,
              buttonPressedColor: kPrimaryButtonPressedColor,
              height: 42,
              width: 351,
              buttonText: "保存",
              buttonTextStyle: tPrimaryButtonText3,
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 36,
                width: 161,
                buttonText: "查看订单",
                buttonTextStyle: tPrimaryButtonText2,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: PrimaryButtonComponent(
                buttonColor: kPrimaryButtonColor,
                buttonPressedColor: kPrimaryButtonPressedColor,
                height: 36,
                width: 161,
                buttonText: "再次尝试",
                buttonTextStyle: tPrimaryButtonText2,
                onPressed: () {},
              ),
            ),
            Divider(),
            Text("Secondary Button: "),
            Container(
              width: 294,
              height: 50,
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor5,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 39,
                borderColor: kSecondaryButtonColor4,
                borderWidth: 2,
                buttonText: "注册",
                buttonTextStyle: tSecondaryButtonText,
                onPressed: () {},
              ),
            ),
            Container(
              width: 351,
              height: 42,
              margin: EdgeInsetsDirectional.all(8),
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor6,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 35,
                borderColor: kSecondaryButtonColor3,
                borderWidth: 1,
                buttonText: "删除地址",
                buttonTextStyle: tSecondaryButtonText2,
                onPressed: () {},
              ),
            ),
            Container(
              width: 161,
              height: 36,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 80),
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor6,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 35,
                borderColor: kSecondaryButtonColor,
                borderWidth: 1,
                buttonText: "返回",
                buttonTextStyle: tSecondaryButtonText3,
                onPressed: () {},
              ),
            ),
            Container(
              width: 161,
              height: 36,
              margin:
                  EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 80),
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor6,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 35,
                borderColor: kSecondaryButtonColor,
                borderWidth: 1,
                buttonText: "返回",
                buttonTextStyle: tSecondaryButtonText4,
                onPressed: () {},
              ),
            ),
            Container(
              width: 49,
              height: 29,
              margin:
                  EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 135),
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor6,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 14,
                borderColor: kSecondaryButtonColor3,
                borderWidth: 1,
                buttonText: "物流",
                buttonTextStyle: tSecondaryButtonText5,
                onPressed: () {},
              ),
            ),
            Container(
              width: 49,
              height: 29,
              margin:
                  EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 125),
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor6,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 14,
                borderColor: kSecondaryButtonColor2,
                borderWidth: 1,
                buttonText: "确认收货",
                buttonTextStyle: tSecondaryButtonText6,
                onPressed: () {},
              ),
            ),
            Container(
              width: 49,
              height: 29,
              margin:
                  EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 135),
              child: SecondaryButtonComponent(
                buttonColor: kSecondaryButtonColor6,
                buttonPressedColor: kSecondaryButtonPressedColor,
                radius: 14,
                borderColor: kSecondaryButtonColor2,
                borderWidth: 1,
                buttonText: "待付款",
                buttonTextStyle: tSecondaryButtonText7,
                onPressed: () {},
              ),
            ),
            Divider(),
            Text("Title component: "),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleComponent(
                titles: ["商城", "我的"],
                selectedIndex: titleSelection,
                isCart: false,
                onTap: (index) {
                  setState(() {
                    titleSelection = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleComponent(
                titles: ["发现"],
                selectedIndex: titleSelection,
                isCart: false,
                onTap: (index) {
                  setState(() {
                    titleSelection = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleComponent(
                titles: ["福利"],
                selectedIndex: titleSelection,
                isCart: false,
                onTap: (index) {
                  setState(() {
                    titleSelection = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleComponent(
                titles: ["购物车"],
                selectedIndex: titleSelection,
                isCart: true,
                onTap: (index) {
                  setState(() {
                    titleSelection = index;
                  });
                },
              ),
            ),
            Divider(),
            Text("Loading Examples: "),
            Container(
              height: 100,
              color: kMainGreenColor,
              child: Center(
                child: LoadingAnimationWidget.prograssiveDots(
                    color: kMainWhiteColor, size: 50),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: LoadingAnimationWidget.prograssiveDots(
                    color: kMainGreenColor, size: 50),
              ),
            ),
            Text("Post Loading Examples: "),
            SizedBox(
              height: 500,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const ExplorePostLoadingComponent();
                },
              ),
            ),
            Text("Inventory Loading Examples: "),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
