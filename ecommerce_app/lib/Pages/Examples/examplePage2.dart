import 'package:ecommerce_app/Components/Address/addressTextFieldComponent.dart';
import 'package:ecommerce_app/Components/Common/Status/deliveryStatusComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Components/Common/Button/submitButtonComponent.dart';
import '../../Constants/textConstants.dart';

class ExamplePage2 extends StatefulWidget {
  const ExamplePage2({super.key});

  @override
  State<ExamplePage2> createState() => _ExamplePage2State();
}

class _ExamplePage2State extends State<ExamplePage2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Address Text Field Component:"),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  AddressTextFieldComponent(
                      // onNameInitial: name,
                      // onNameChanged: (value) {
                      //   setState(() {
                      //     nameController.text = value;
                      //   });
                      // },
                      ),
                  SubmitButtonComponent(
                    buttonText: "确认",
                    buttonTextStyle: tSubmitButtonText,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(
                            'Submitted data: Name: ${nameController.text}, Phone: ${phoneController.text}, Address: ${addressController.text}, City: ${cityController.text}, State: ${stateController.text}, Code: ${codeController.text}');
                      }
                    },
                    isLoading: false,
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 20),
            Text("Delivery Status Component:"),
            SizedBox(height: 20),
            DeliveryStatusComponent(
                isPay: false,
                status: AppLocalizations.of(context)!.statusWaitPayment),
            SizedBox(height: 10),
            DeliveryStatusComponent(
                isPay: true,
                status: AppLocalizations.of(context)!.statusWaitReceiving),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
