import 'package:biscuit/imports.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset('images/doodle3.png'),
              Positioned.fill(left:10,child: Align(alignment:Alignment.centerLeft,child: Image.asset('images/doodle2.png'))),
              Positioned(
                  bottom: 0, left: -20, child: Image.asset('images/Saly.png')),
              Positioned.fill(right: 7,child: Align(alignment:Alignment.centerRight,child: Image.asset('images/doodle.png'))),
              Container(
                width: 170,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'images/curtain2.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: -1,
                child: Container(
                    width: 170,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'images/curtain1.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientText(
                    'Biscuit',
                    style: GoogleFonts.greatVibes(
                      fontSize: 100,
                    ),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFC2FFD8), Color(0xFF465EFB)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                  Text(
                    'Login',
                    style: GoogleFonts.workSans(
                        fontSize: 30.0,
                        color: Color(0xFFF49905),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Please login using account detail below',
                    style:
                        GoogleFonts.roboto(fontSize: 18.0, color: Colors.grey),
                  ),
                  Container(
                    margin: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    // Button and TextField
                    child: const TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.phone_rounded,
                            color: Colors.orange,
                          ),
                          hintText: 'Mobile number',
                          contentPadding: EdgeInsets.only(left: 8.0,top: 8.0),
                          border: InputBorder.none),
                      cursorColor: Colors.black,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: const LinearGradient(
                            colors: [Color(0xFFE89F16), Color(0xFFFFAF18)])),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Get Otp',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    'or connect with',
                    style: GoogleFonts.coda(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {},
                      child: Text(
                        'Login with facebook',
                        style: GoogleFonts.coda(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {},
                      child: Text(
                        'Login with instagram',
                        style: GoogleFonts.coda(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
