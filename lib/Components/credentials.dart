import 'package:flutter/material.dart';

class Credentials extends StatelessWidget {
  const Credentials(
      {required this.controller,
        required this.text,
        required this.obscure,
        required this.padding,
        this.icon=Icons.email
      });

  final TextEditingController controller;
  final String text;
  final double padding;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: padding),
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.white)),
            labelText: text,
            labelStyle: TextStyle(color: Colors.white),
            suffixIcon: Icon(icon,color: Colors.white,)),
        obscureText: obscure,
        cursorColor: Colors.white,
      ),
    );
  }
}
