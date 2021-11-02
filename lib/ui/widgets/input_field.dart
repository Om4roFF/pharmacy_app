import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String? a) onChanged;
  final bool? obscure;
  final TextEditingController? controller;
  final String? headText;
  final int? maxLine;
  final IconData? icon;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.onChanged,
      this.obscure = true,
      this.controller,
      this.headText,
      this.maxLine = 1,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (headText != null) Text(headText!),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 45.0 + maxLine! * 10,
            child: TextField(
              cursorColor: Colors.black38,
              obscureText: obscure ?? false,
              maxLines: maxLine,
              decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                color: Colors.black,
              ),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
