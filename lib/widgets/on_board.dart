import 'dart:ui';

import 'package:clickchic/components/text_format.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  static const String routeName = "OnBoard";
  const OnBoard({
    super.key,
    required this.title,
    required this.disc,
    required this.imagePath,
  });

  final String imagePath, title, disc;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2,
          sigmaY: 1,
        ),
        child: Container(
          color: Colors.black.withOpacity(0.4),
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              // Image.asset(
              //   imagePath,
              // ),
              PoppinsText(
                text: title,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontS: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              PoppinsText(
                text: disc,
                color: Colors.grey[300],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
