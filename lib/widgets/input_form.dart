import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? lableText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;

  final bool obscureValue;
  final Function(String) onChanged;
  final TextInputType? keybordType;
  final InputBorder? inputBorder;
  final InputBorder? focusedBorder;
  final bool filled;
  final String? hintText;

  InputField({
    this.lableText,
    this.suffixIcon,
    this.obscureValue = false,
    required this.onChanged,
    this.keybordType,
    this.inputBorder,
    this.focusedBorder,
    this.filled = false,
    this.prefixIcon,
    this.hintText = '',
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontFamily: 'SF Pro Rounded',
        fontWeight: FontWeight.w600,
        fontSize: 17,
        color: Color(0xff2B2B2B),
      ),
      obscureText: obscureValue,
      obscuringCharacter: '*',
      onChanged: onChanged,
      keyboardType: keybordType,
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: const TextStyle(
          fontFamily: 'SF Pro Rounded',
          fontSize: 15,
          height: 1.2,
          fontWeight: FontWeight.w600,
          color: Color(0xff919191),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          height: 1.5,
        ),
        filled: filled,
        fillColor: const Color(0xffEFEEEE),
        border: inputBorder,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        focusedBorder: focusedBorder,
      ),
    );
  }
}
