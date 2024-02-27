import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  final Function() onPressed;
  final Color? bgColor;
  final Widget? widget;
  const KButton({
    super.key,
    required this.onPressed,
    required this.bgColor,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      onPressed: onPressed,
      child: widget,
    );
  }
}
