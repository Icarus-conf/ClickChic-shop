import 'package:clickchic/pages/confirm_code.dart';
import 'package:clickchic/pages/home_page.dart';
import 'package:clickchic/pages/login_page.dart';
import 'package:clickchic/pages/start_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StartPage.routeName,
      routes: {
        StartPage.routeName: (context) => const StartPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
        ConfirmCode.routeName: (context) => const ConfirmCode(),
      },
    );
  }
}

// ClickChic