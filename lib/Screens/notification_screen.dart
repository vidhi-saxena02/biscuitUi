import 'package:biscuit/imports.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B5998),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notification',
                style: GoogleFonts.workSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const NotificationContainer(
                        color1: Color(0xFFFEC163),
                        color2: Color(0xFFDE4313),
                        image: 'Heart',
                      ),
                      Text(
                        'Likes',
                        style: GoogleFonts.workSans(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const NotificationContainer(
                        color1: Color(0xFF43CBFF),
                        color2: Color(0xFF9708CC),
                        image: 'Chat',
                      ),
                      Text(
                        'Comments',
                        style: GoogleFonts.workSans(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const NotificationContainer(
                        color1: Color(0xFF90F7EC),
                        color2: Color(0xFF32CCBC),
                        image: '@',
                      ),
                      Text(
                        'Mentions',
                        style: GoogleFonts.workSans(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const NotificationContainer(
                        color1: Color(0xFFE2B0FF),
                        color2: Color(0xFF9F44D3),
                        image: 'User',
                      ),
                      Text(
                        'Followers',
                        style: GoogleFonts.workSans(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15.0,),
              ListTile(
                leading: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xFFF05F57), Color(0xFF360940)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(360)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '#',
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white),
                    ),
                  ),
                ),
                title: Text('Treading Hashtags',style: GoogleFonts.workSans(color: Colors.white,fontSize: 18),),
                subtitle: Text('You can see Whats Trending !',style: GoogleFonts.workSans(color: Colors.white,fontSize: 12),),
                trailing: const Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 35,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String image;
  const NotificationContainer({
    required this.image,
    required this.color2,
    required this.color1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(360)),
      child: Image.asset('images/$image.png'),
    );
  }
}
