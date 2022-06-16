import 'dart:async';

import 'package:biscuit/Screens/signup_screen.dart';
import 'package:biscuit/imports.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFF9700),
        body: Column(
          children: [
            Container(
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                      left: -10,
                      child: Image.asset(
                        'images/container1.png',
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      top: -20,
                      right: -100,
                      child: Image.asset('images/container2.png')),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset('images/logo.png')),
            GradientText(
              'Biscuit',
              style: GoogleFonts.katibeh(
                  fontWeight: FontWeight.bold, fontSize: 100.0),
              gradient: const LinearGradient(colors: [
                Color(0xFFF97794),
                Color(0xFF623AA2),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            Align(
              alignment: Alignment.center,
              child: JumpingDotsProgressIndicator(
                color: Colors.white,
                fontSize: 70.0,
              ),
            ),
          ],
        ));
  }
}
