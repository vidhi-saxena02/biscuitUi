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
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFFD6ED8).withOpacity(0.6),
                const Color(0xFF732EC8)
              ],
              begin: const Alignment(-1.0, -1),
              end: const Alignment(1.0, 1),
            )),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Row(
                        children: [
                          Container(
                              width: 120,
                              height: 120,
                              child: Image.asset(
                                'images/doodle.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            width: isMobile?145 : 185,
                            height: isMobile ?240: 300,
                            child: Image.asset(
                              'images/Saly.png',
                              fit: BoxFit.cover,
                            )),
                        Expanded(child: Container()),
                      ],
                    ),
                    Positioned(
                      left: isMobile ? 80 : 250,
                      bottom: -15,
                      child: GradientText(
                        'Biscuit',
                        style: GoogleFonts.greatVibes(fontSize: isMobile ?85: 120),
                        gradient: const LinearGradient(
                            colors: [Colors.white, Color(0xFF6282F3)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                  ],
                ),
              ),
                Text(
                'Login',
                style:
                GoogleFonts.workSans(color: Colors.white, fontSize: 25.0),
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
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          'images/doodle2.png',
                          fit: BoxFit.cover,
                        )),
                    Credentials(
                      controller: _passwordController,
                      text: 'Enter password',
                      obscure: true,
                      padding: isMobile ?18.0 : 40.0,
                      icon: Icons.remove_red_eye,
                    ),
                  ],
                ),
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
              Button(
                text: 'Log In',
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                        top: -25,
                        left: -10,
                        child: Image.asset(
                          'images/fly.png',
                          height: 120,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Don\'t have an Account?',
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 18.0),
                        ),
                        InkWell(
                          child: Text(
                            'Create Account',
                            style: GoogleFonts.roboto(
                                color: Colors.blue.shade300,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


