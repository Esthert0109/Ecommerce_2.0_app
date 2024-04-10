import 'package:ecommerce_app/Components/Common/Button/secondaryButtonComponent.dart';
import 'package:ecommerce_app/Components/Common/SearchBar/searchbarComponent.dart';
import 'package:ecommerce_app/Components/Common/Selection/categorySelectionComponent.dart';
import 'package:ecommerce_app/Components/Common/Selection/statusSelectionComponent.dart';
import 'package:ecommerce_app/Components/Common/Status/status2Component.dart';
import 'package:ecommerce_app/Components/Inventory/InventoryTitleComponent.dart';
import 'package:ecommerce_app/Components/Point/invitationComnponent.dart';
import 'package:ecommerce_app/Components/Post/postComponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import '../../Components/Common/Button/primaryButtonComponent.dart';
import '../../Components/Common/Button/submitButtonComponent.dart';
import '../../Components/Common/Loading/addressLoadingComponent.dart';
import '../../Components/Common/Loading/explorePostDetailLoadingComponent.dart';
import '../../Components/Common/Loading/explorePostLoadingComponent.dart';
import '../../Components/Common/Loading/inventoryDetailLoadingComponent.dart';
import '../../Components/Common/Loading/inventoryLoading.dart';
import '../../Components/Common/Loading/orderLoadingComponent.dart';
import '../../Components/Common/Loading/orderStatusDetailLoadingComponent.dart';
import '../../Components/Common/Loading/pointLoadingComponent.dart';
import '../../Components/Common/Loading/pointRuleLoadingComponent.dart';
import '../../Components/Common/Selection/orderStatusSelectionComponent.dart';
import '../../Components/Common/Selection/tagSelectionComponent.dart';
import '../../Components/Common/Selection/titleComponent.dart';
import '../../Components/Common/TextField/textFieldComponent.dart';
import '../../Components/Common/Status/statusComponent.dart';
import '../../Components/Inventory/InventorySelectionComponent2.dart';
import '../../Components/Perk/pointCardComponent.dart';
import '../../Components/Post/postInventoryComponent.dart';
import '../../Components/Post/post.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';

class ExamplesPage extends StatefulWidget {
  @override
  State<ExamplesPage> createState() => _ExamplesPageState();
}

class _ExamplesPageState extends State<ExamplesPage> {
  int titleSelection = 0;
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  int tagSelection = 0;
  int categroySelection = 0;
  int statusSelection = 0;
  int inventorySelection = 0;

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
                      isLoading: false,
                    ),
                  ],
                )),
            Divider(),
            Text("Status: "),
            SubmitButtonComponent(
              isLoading: false,
              buttonText: AppLocalizations.of(context)!.statusRegisSuccessful,
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {
                CustomBottomSheet.show(
                  context,
                  AppLocalizations.of(context)!.statusRegisSuccessful,
                );
              },
            ),
            SubmitButtonComponent(
              isLoading: false,
              buttonText:
                  AppLocalizations.of(context)!.statusPassResetSuccessful,
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {
                CustomBottomSheet.show(
                  context,
                  AppLocalizations.of(context)!.statusPassResetSuccessful,
                );
              },
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
            Text("Post Details Loading Examples: "),
            const ExplorePostDetailLoadingComponent(),
            const SizedBox(
              height: 100,
            ),
            Text("Inventory Loading Examples: "),
            SizedBox(
              height: 500,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 1,
                    childAspectRatio: 0.7),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const InventoryLoadingComponent();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Inventory Detail Loading Examples: "),
            InventoryDetailLoadingComponent(),
            const SizedBox(
              height: 100,
            ),
            Text("Order Loading Examples: "),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(3, (index) => OrderLoadingComponent()),
            ),
            Text("Address Loading Examples: "),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(3, (index) => AddressLoadingComponent()),
            ),
            Text("Order Status Detail Loading Examples: "),
            const OrderStatusDetailLoadingComponent(),
            const SizedBox(height: 50),
            Text("Point Loading Examples: "),
            Column(
              children: List.generate(5, (index) => PointLoadingComponent()),
            ),
            Text("Point Rule Loading Examples: "),
            Column(
              children:
                  List.generate(3, (index) => PointRuleLoadingComponent()),
            ),
            Text("Tag Selection Examples: "),
            TagSelectionComponent(
              tags: ["全部", "价钱", "热度"],
              selectedIndex: tagSelection,
              onTap: (index) {
                setState(() {
                  tagSelection = index;
                });
              },
            ),
            Text("Order Status Selection Examples: "),
            OrderStatusSelectionComponent(),
            Text("Point Card Examples: "),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: PointCardComponent(
                    isShareCard: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: PointCardComponent(
                    point: "603",
                    isShareCard: true,
                  ),
                ),
              ],
            ),
            Text("Post Inventory Examples: "),
            PostInventoryComponent(
              inventoryImg:
                  "https://chagee.com.my/wp-content/uploads/2022/08/Chagee-Fresh-Milk-Tea-Series.jpg",
              inventoryTitle: '茶姬茶姬茶茶茶姬茶姬茶茶茶姬茶姬茶茶茶姬茶姬茶茶茶姬茶姬茶茶茶姬茶姬茶茶茶姬茶姬茶茶',
              inventoryPrice: '30.80',
            ),
            Text("Inventory Selection Examples: "),
            InventorySelectionComponent2(
              selections: ["60 PCS", "90 PCS", "20 PCS"],
              selectedIndex: inventorySelection,
              onTap: (index) {
                setState(() {
                  inventorySelection = index;
                });
              },
            ),
            Divider(),
            Text("Mall SeachBar: "),
            SizedBox(height: 10),
            SearchBarComponent(
              onChanged: null,
              isExpore: false,
              onFieldSubmitted: (value) {
                // Trim the submitted value to remove leading and trailing whitespace
                String trimmedValue = value.trim();

                if (trimmedValue.isNotEmpty) {}
              },
            ),
            SizedBox(height: 10),
            Text("Product SeachBar: "),
            SizedBox(height: 10),
            SearchBarComponent(
              onChanged: null,
              isExpore: true,
              onFieldSubmitted: (value) {
                String trimmedValue = value.trim();

                if (trimmedValue.isNotEmpty) {}
              },
            ),
            SizedBox(height: 20),
            Divider(),
            Text("Payment Status:"),
            SizedBox(height: 10),
            SubmitButtonComponent(
              buttonText: "付款成功",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {
                Get.to(
                    () => PaymentStatusComponent(
                          title: AppLocalizations.of(context)!
                              .statusPaymentSuccessful,
                          image: "assets/status/paymentComplete.png",
                          paymentSuccess: true,
                        ),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 300));
              },
              isLoading: false,
            ),
            SubmitButtonComponent(
              buttonText: "付款失败",
              buttonTextStyle: tSubmitButtonText,
              onPressed: () {
                Get.to(
                    () => PaymentStatusComponent(
                        title: AppLocalizations.of(context)!.statusPaymentFail,
                        image: "assets/status/paymentFail.png",
                        paymentSuccess: false),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 300));
              },
              isLoading: false,
            ),
            SizedBox(height: 20),
            Divider(),
            Text("Category Selection Example:"),
            SizedBox(height: 10),
            CategorySelectionComponent(
              tags: ["全部", "茶具", "茶叶", "古玩"],
              selectedIndex: categroySelection,
              onTap: (index) {
                setState(() {
                  categroySelection = index;
                });
              },
            ),
            SizedBox(height: 20),
            Divider(),
            Text("Status Selection Example:"),
            SizedBox(height: 10),
            Row(
              children: [
                StatusSelectionComponent(
                  tags: ["全部", "待发货", "待收货", "已完成"],
                  selectedIndex: statusSelection,
                  onTap: (index) {
                    setState(() {
                      statusSelection = index;
                    });
                  },
                  isCart: false,
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            Text("Inventory Title Example:"),
            SizedBox(height: 10),
            InventoryTitleComponent(
                productTitle:
                    "New Tea Alpine Yunwu Green Tea Maojian Tea Strong Flavor Canned Bulk Green Tea",
                price: "60.45",
                productSold: "245"),
            Divider(),
            Text("Post Component Example:"),
            SizedBox(
              height: 500,
              child: MasonryGridView.count(
                itemCount: posts.length,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemBuilder: (context, index) {
                  return PostComponent(
                    postImg: posts[index].postImg,
                    postTitle: posts[index].postTitle,
                    postProfileImg: posts[index].postProfileImg,
                    postProfileName: posts[index].postProfileName,
                  );
                },
              ),
            ),
            Divider(),
            Text("Invitation Component Example:"),
            SizedBox(height: 10),
            InvitationComponent(),
            Divider(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
