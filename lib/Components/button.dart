import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/profile_screen.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> ProfileScreen()));
        },
        child: Text(
          'Log in',
          style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500),
        ),
        style: ElevatedButton.styleFrom(
            padding: const  EdgeInsets.symmetric(vertical:8.0,horizontal: 30 ),
            primary:  const Color(0xFF007AB9),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),))
    );
  }
}

