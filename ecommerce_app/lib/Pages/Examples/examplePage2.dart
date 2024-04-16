import 'package:ecommerce_app/Components/Address/addressTextFieldComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage2 extends StatefulWidget {
  const ExamplePage2({super.key});

  @override
  State<ExamplePage2> createState() => _ExamplePage2State();
}

class _ExamplePage2State extends State<ExamplePage2> {
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AddressTextFieldComponent(),
          ],
        ),
      ),
    );
  }
}
