import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color colorButton;
  final Color colorText;

  const ButtonApp({
    Key? key,
    this.onPressed,
    required this.text,
    this.colorButton = Colors.blue,
    this.colorText = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      elevation: 5,
      primary: colorButton,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );

    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: colorText, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
