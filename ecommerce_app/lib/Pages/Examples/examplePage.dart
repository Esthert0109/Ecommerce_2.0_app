import 'package:ecommerce_app/Components/Common/Button/secondaryButtonComponent.dart';
import 'package:ecommerce_app/Components/Common/TextField/textFieldComponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../Components/Common/Button/primaryButtonComponent.dart';
import '../../Components/Common/Button/submitButtonComponent.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class ExamplesPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
            ),
            SubmitButtonComponent(
              buttonText: "返回登陆",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {},
            ),
            SubmitButtonComponent(
              buttonText: "保存",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {},
            ),
            Text("Disable Submit Button: "),
            SubmitButtonComponent(
              buttonText: "确认",
              buttonTextStyle: tSubmitButtonText,
              onPressed: null,
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
            SizedBox(
              height: 10,
            ),
            Divider(),
            Text("Input Field: "),
            Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFieldComponent(
                      isPassword: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // return '密码不能为空';
                          return AppLocalizations.of(context)!.valiPassNoEmpty;
                        } else if (value.length < 8) {
                          // return '密码至少需要8个字符';
                          return AppLocalizations.of(context)!.valiPassAtLeast8;
                        } else if (!value.contains(RegExp(r'[A-Z]'))) {
                          // return '密码必须包含至少一个大写字母';
                          return AppLocalizations.of(context)!
                              .valiPassAtLeast1U;
                        } else if (!value.contains(RegExp(r'[a-z]'))) {
                          // return '密码必须包含至少一个小写字母';
                          return AppLocalizations.of(context)!
                              .valiPassAtLeast1L;
                        } else if (value.contains(RegExp(r'\s'))) {
                          // return '密码不能包含空格';
                          return AppLocalizations.of(context)!
                              .valiPassNoSpaceAllow;
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFieldComponent(
                      isPassword: true,
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return AppLocalizations.of(context)!.valiPassNoEmpty;
                        } else if (confirmPasswordController.text !=
                            passwordController.text) {
                          return AppLocalizations.of(context)!.valiPassNoMatch;
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                    TextFieldComponent(
                      isPassword: false,
                      controller: usernameController,
                      hintText: AppLocalizations.of(context)!.usernameHint,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          //用户名不能为空
                          return AppLocalizations.of(context)!
                              .valiUsernameNoEmpty;
                        } else if (value.length < 3) {
                          //用户名至少需要3个字符
                          return AppLocalizations.of(context)!
                              .valiUsernameAtLeast3;
                        } else if (value.contains(RegExp(r'\s'))) {
                          //用户不能包含空格
                          return AppLocalizations.of(context)!
                              .valiUsernameNoSpaceAllow;
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                    SubmitButtonComponent(
                      buttonText: "确认",
                      buttonTextStyle: tSubmitButtonText,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                      },
                    ),
                  ],
                )),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
