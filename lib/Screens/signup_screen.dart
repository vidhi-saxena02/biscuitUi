import 'package:biscuit/imports.dart';

class SignUp extends StatelessWidget {
  late TextEditingController _emaiLController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Color(0xFF7906A3),
                ],
                begin: Alignment(-1.0, -1),
                end: Alignment(1.0, 1),
              ),
            ),
            child: Column(children: [
              Align(alignment:Alignment.centerRight,child: Image.asset('images/11.png')),
              const SizedBox(height: 12.0,),
              Image.asset('images/cookies.png'),
              GradientText(
                'Biscuit',
                style: GoogleFonts.greatVibes(fontSize: 85),
                gradient: const LinearGradient(
                    colors: [Colors.white, Color(0xFF6282F3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              Text(
                'SignUp',
                style:
                GoogleFonts.workSans(color: Colors.white, fontSize: 25.0),
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
                padding: 18.0,
                icon:    Icons.remove_red_eye,),
              const SizedBox(
                height: 12.0,
              ),
             Button(text: 'Sign In'),
              const SizedBox(height: 12.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 40,),
                  Text(
                    'Already have an Account?',
                    style: GoogleFonts.roboto(color: Colors.white,
                        fontSize: 20.0),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text(
                      'Log In',
                      style: GoogleFonts.roboto(color: Colors.blue.shade300,
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],),
              Align(alignment:Alignment.centerRight,child: Image.asset('images/phone.png'))
            ],),
          ),
        ),
      ),
    );
  }
}
