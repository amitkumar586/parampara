import 'package:flutter/material.dart';

class LoginSignupForm extends StatelessWidget {
  final Icon prefixIcon;
  final Widget? suffixIcon;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? onchanged;
  final String? Function(String?)? validator;
  final bool isObscure;
  final TextInputType? keyboardType;
  final bool obscureText;

  const LoginSignupForm({
    super.key,
    this.suffixIcon,
    required this.prefixIcon,
    required this.labelText,
    required this.controller,
    this.onchanged,
    this.validator,
    this.isObscure = false,
    this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        obscureText: obscureText,
        expands: false,
        onChanged: onchanged,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
        ),
      ),
    );
  }
}
