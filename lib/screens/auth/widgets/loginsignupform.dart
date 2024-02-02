import 'package:flutter/material.dart';

class LoginSignupForm extends StatelessWidget {
  final Icon prefixIcon;
  Icon? suffixIcon;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? onchanged;
  final String? Function(String?)? validator;
  final bool isObscure;
  final TextInputType? keyboardType;

  LoginSignupForm({
    super.key,
    this.suffixIcon,
    required this.prefixIcon,
    required this.labelText,
    required this.controller,
    this.onchanged,
    this.validator,
    this.isObscure = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        expands: false,
        onChanged: onchanged,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
        ),
      ),
    );
  }
}
