import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final onChanged;
  final obscure;
  final controller;
  final headText;
  final keyBoard;
  final maxLine;
  final IconData icon;

  CustomTextField(
      {Key? key,
      required this.hintText,
      this.obscure,
      this.onChanged,
      this.controller,
      this.headText,
      this.keyBoard,
      this.maxLine = 1,
      this.icon});
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (headText != null) Text(headText),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 45.0 + maxLine * 10,
              child: TextField(
                // controller: controller,
                cursorColor: Colors.black38,
                obscureText: obscure ?? false,
                maxLines: maxLine,
                decoration: new InputDecoration(
                  hintText: hintText ?? '',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  // suffixIcon: (icon!=null)? Icon(obscure? SugarIcons.obscure_true:SugarIcons.obscure_false, color: Colors.black,size: 10 ):null,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: this.keyBoard != null
                    ? this.keyBoard
                    : TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black,
                ),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
