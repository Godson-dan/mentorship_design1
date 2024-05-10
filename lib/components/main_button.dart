import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;

  const MainButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF39BA80),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}
