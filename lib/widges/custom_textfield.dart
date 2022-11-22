import 'package:flutter/material.dart';

class CustomTextFielWidget extends StatelessWidget {
  final TextInputType? keyboarType;
  final String? hintText;
  final Widget? prefixedIcon;
  final String? initialValue;
  final Function(String)? onChange;

  const CustomTextFielWidget(
      {super.key,
      this.keyboarType,
      this.hintText,
      this.prefixedIcon,
      this.initialValue,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChange,
      keyboardType: keyboarType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        prefixIcon: prefixedIcon,
        contentPadding: const EdgeInsets.all(18),
      ),
    );
  }
}
