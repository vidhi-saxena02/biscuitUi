import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 18.0),
        child: Text(
          text,
          style: GoogleFonts.roboto(color: Colors.white,
              fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        )
    ),);
  }
}

