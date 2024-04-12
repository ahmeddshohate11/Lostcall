import 'package:flutter/material.dart';

class Textf extends StatefulWidget {
  const Textf({super.key});

  @override
  State<Textf> createState() => _TextfState();
}

class _TextfState extends State<Textf> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 10,
        fontFamily: 'Inter',
        color: Color(0XFFBDBBBB),
      ),
      cursorColor: Color(0XFF509BE1),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF509BE1), width: 0.5),
          borderRadius: BorderRadius.circular(17),
        ),
        filled: true,
        fillColor: Color(0XFF232334),
        border: OutlineInputBorder(),
        hintText: "   type here",
        hintStyle: TextStyle(
          color: Color(0XFFBDBBBB),
        ),
      ),
    );
  }
}
