import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData? icon;
  final String placeholder;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    Key? key,
    this.icon,
    required this.placeholder,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: TextField(
        controller: controller,
        autocorrect: false,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          prefixIcon: icon != null ? Icon(icon) : null,
          hintText: placeholder,
        ),
      ),
    );
  }
}
