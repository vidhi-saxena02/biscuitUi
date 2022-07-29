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
        body: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(colors: [
            Colors.lightBlue,
           Color(0xFF2196F3),
          ],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
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
          ),
        ));
  }
}
