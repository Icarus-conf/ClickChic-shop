import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? isObscureText;
  final TextInputType? textInputType;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.isObscureText,
    this.textInputType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: isObscureText ?? false,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey[400],
        ),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        labelText: labelText,
        hintStyle: TextStyle(
          color: Colors.grey[500],
        ),
        labelStyle: TextStyle(
          color: Colors.grey[500],
        ),
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[200]!,
            width: .5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[200]!,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        errorStyle: const TextStyle(
          color: Color(0xFFa8dadc),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFa8dadc),
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFa8dadc),
          ),
        ),
      ),
    );
  }
}
