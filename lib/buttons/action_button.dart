import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {required this.icon,
      required this.btnText,
      required this.action,
      super.key});

  final IconData icon;
  final String btnText;
  final Function() action;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
        icon: Icon(icon),
        onPressed: action,
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            fixedSize: const Size(160, 40),
            backgroundColor: const Color.fromARGB(206, 4, 0, 122)),
        label: Text(btnText));
  }
}
