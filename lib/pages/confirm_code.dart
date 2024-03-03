import 'dart:async';

import 'package:clickchic/components/button.dart';
import 'package:clickchic/components/text_format.dart';
import 'package:clickchic/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmCode extends StatefulWidget {
  static const String routeName = 'ConfirmCode';
  const ConfirmCode({super.key});

  @override
  State<ConfirmCode> createState() => _ConfirmCodeState();
}

class _ConfirmCodeState extends State<ConfirmCode> {
  var controller = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  var currentText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const PoppinsText(
                text: 'Confirm phone \nnumber',
                fontS: 30,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 12,
              ),
              PoppinsText(
                text:
                    'To the number +531531555 sent a \nsms with a code. Enter it below.',
                color: Colors.grey[500],
              ),
              const SizedBox(
                height: 25,
              ),
              PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  activeColor: Colors.blue,
                  inactiveColor: Colors.black,
                  disabledColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedColor: Colors.white,
                  selectedFillColor: Colors.black,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                mainAxisAlignment: MainAxisAlignment.center,
                errorAnimationController: errorController,
                controller: controller,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {
                    currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  return true;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: KButton(
                  widget: const PoppinsText(
                    text: 'Login',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                  bgColor: Colors.black,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
