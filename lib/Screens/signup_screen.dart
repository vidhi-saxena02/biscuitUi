import 'package:biscuit/Screens/login_screen.dart';
import 'package:biscuit/imports.dart';

const kPrimaryColor = Color(0xFF2196F3);
const kColor = Color(0xFF465EFB);

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF076AB6), Color(0xFF395897)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 20.0,),
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
                    color: Colors.blue.shade50,
                    fontWeight: FontWeight.w500,
                    shadows:const [
                      Shadow(color: kColor, blurRadius: 3),
                      Shadow(color: kColor, blurRadius: 6),
                      Shadow(color: kColor, blurRadius: 9),
                    ]),
              ),
              const SizedBox(height: 12.0,),
              Text(
                'Please login using account detail below',
                style: GoogleFonts.roboto(fontSize: 18.0, color: Colors.white),
              ),
              Fields(),
              GetOTP(),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                'or connect with',
                style: GoogleFonts.coda(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20.0),
              ),
              const SizedBox(
                height: 18.0,
              ),

              ClipPath(
                clipper: ClipperPath(),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration:const BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0))),
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Positioned(
                      top: 50,
                      bottom: 20,
                      left: 50,
                      right: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360.0),
                                color: const Color(0xFF3B5998)),
                            child: Image.asset('images/facebook.png'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(360.0),
                                  color: const Color(0xFF3B5998)),
                              child: const Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                                size: 25,
                              )),
                          const SizedBox(width: 20,),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360.0),
                                color: Colors.red.shade800),
                            child: Image.asset('images/pinterest.png'),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(360.0),
                                  color: Colors.blue),
                              child: Image.asset('images/linked.png')),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    ]),
    );
  }
}

class Fields extends StatelessWidget {
  const Fields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.phone_rounded,
              color: kPrimaryColor,
            ),
            hintText: 'Mobile number',
            contentPadding: EdgeInsets.only(left: 8.0, top: 8.0),
            border: InputBorder.none),
        cursorColor: Colors.black,
      ),
    );
  }
}

class GetOTP extends StatelessWidget {
  const GetOTP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen()));
        },
        child: Text(
          'Get Otp',
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

class ClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
