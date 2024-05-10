import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String heading;
  final String? hintText;
  final String? suffixText;
  final IconData? icon;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.heading,
      this.hintText,
      this.suffixText,
      this.icon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /////////Heading///////////
        Text(
          heading,
          style: const TextStyle(fontSize: 18),
        ),

        ////////TextField//////////
        const SizedBox(
          height: 13,
        ),

        SizedBox(
          height: 55,
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFEBEAEA)),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF39BA80)),
                  borderRadius: BorderRadius.circular(15)),
              hintText: hintText,
              suffixIcon: Icon(icon),
              suffixText: suffixText,
            ),
          ),
        ),
      ],
    );
  }
}
