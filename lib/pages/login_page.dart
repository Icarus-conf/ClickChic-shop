import 'package:clickchic/components/button.dart';
import 'package:clickchic/components/text_format.dart';
import 'package:clickchic/pages/confirm_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = 'LoginPage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PoppinsText(
                    text: 'Enter phone \nnumber',
                    fontS: 30,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  PoppinsText(
                    text:
                        'Activation code will be sent to your phone \nnumber to sign up or log in.',
                    color: Colors.grey[500],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: KButton(
                      widget: const PoppinsText(
                        text: 'Get the code',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, ConfirmCode.routeName);
                      },
                      bgColor: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: PoppinsText(
                      text:
                          'By clicking Login button, you accept the \nterms of the Privacy Policy',
                      textAlign: TextAlign.center,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const PoppinsText(text: 'Or continue with'),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KButton(
                        widget: Row(
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              width: 25,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const PoppinsText(
                              text: 'Google',
                              color: Colors.white,
                            ),
                          ],
                        ),
                        onPressed: () {},
                        bgColor: Colors.grey[900],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      KButton(
                          widget: const Row(
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              PoppinsText(
                                text: 'Google',
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {},
                          bgColor: Colors.grey[900]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
