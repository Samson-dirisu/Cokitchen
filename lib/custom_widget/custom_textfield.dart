import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color hintColor;
  final Widget prefixIcon;
  final Color fillColor;

  CustomTextField({
    this.controller,
    this.fillColor,
    this.hintColor,
    this.hintText,
    this.prefixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 50.0,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.w500),
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0),
              child: prefixIcon,
            ),
            prefixIconConstraints: BoxConstraints(minHeight: 15.9, minWidth: 15.9),
            filled: true,
            fillColor: fillColor,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35.0),
                borderSide: BorderSide(color: Colors.transparent),),
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
