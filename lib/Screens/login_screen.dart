import 'package:biscuit/Screens/signup_screen.dart';
import 'package:biscuit/imports.dart';
import 'package:biscuit/responsive.dart';

class LoginScreen extends StatelessWidget {
  late TextEditingController _emaiLController = TextEditingController();

  late TextEditingController _passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF076AB6), Color(0xFF395897)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText(
              'Biscuit',
              style: GoogleFonts.greatVibes(fontSize: isMobile ?85: 120),
              gradient: const LinearGradient(
                  colors: [Colors.white, Color(0xFF6282F3)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            Text(
              'Login',
              style: GoogleFonts.workSans(
                  fontSize: 30.0,
                  color: Colors.blue.shade50,
                  fontWeight: FontWeight.w500,
                  shadows: const [
                    Shadow(color: kColor, blurRadius: 3),
                    Shadow(color: kColor, blurRadius: 6),
                    Shadow(color: kColor, blurRadius: 9),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please login using account detail below',
                style: GoogleFonts.workSans(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Credentials(
              text: 'Enter email address',
              padding: 0,
              controller: _emaiLController,
              obscure: false,
            ),
            Credentials(
              controller: _passwordController,
              text: 'Enter password',
              obscure: true,
              padding: isMobile ?18.0 : 40.0,
              icon: Icons.remove_red_eye,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  'Forgot Your Password?',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
          const  Button(
              text: 'Log In',
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an Account?',
                  style: GoogleFonts.roboto(
                      color: Colors.white, fontSize: 19.0),
                ),
                const SizedBox(width:10),
                InkWell(
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.roboto(
                        color: Colors.blue.shade300,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


