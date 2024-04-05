import 'package:ecommerce_app/Components/Common/Button/submitButtonComponent.dart';
import 'package:ecommerce_app/Constants/colorConstants.dart';
import 'package:ecommerce_app/Constants/textConstants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ecommerce_app/Pages/Examples/examplePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomSheet {
  static void show(BuildContext context, String text) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context, // Set isScrollControlled to true
      builder: (BuildContext context) {
        return Material(
          type: MaterialType.transparency,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 150,
                  height: 5.0,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll((Color(0xFFF0F0F0)))),
                    child: Text(' '),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  width: 190,
                  height: 190,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/status/completeStatus.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  // "成功",
                  AppLocalizations.of(context)!.statusSuccessful,
                  style: tStatusFieldText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: tTagSelectionSelectedText,
                ),
                const SizedBox(
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SubmitButtonComponent(
                      buttonText: "返回登录",
                      buttonTextStyle: tSubmitButtonText,
                      onPressed: () {
                        Navigator.pop(context);
                        ExamplesPage();
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
