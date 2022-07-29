import 'package:biscuit/Screens/notification_screen.dart';
import 'package:biscuit/imports.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(children: [
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                InkWell(onTap:()=> Navigator.pop(context),child: const   Icon(Icons.arrow_back_ios,color: Colors.grey,size: 30,)),
                Text(
                  'Profile Settings',
                  style:
                  GoogleFonts.roboto(color: Colors.grey, fontSize: 22),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          const DrawerTiles(name: 'Share Profile',iconData: Icons.reply,),
          const DrawerTiles(name: 'Privacy',iconData: Icons.lock_person_sharp,),
          const DrawerTiles(name: 'Downloads',iconData: Icons.downloading_rounded,),
          const DrawerTiles(name: 'Settings',iconData: Icons.settings,),

        ],)
      ),
      backgroundColor: const Color(0xFF3B5998),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('images/profile.png'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 65,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '@Users Name',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 28),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '10.5k',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        'Followers',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    height: 35,
                  ),
                  Column(
                    children: [
                      Text(
                        '200k',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        'Following',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    height: 35,
                  ),
                  Column(
                    children: [
                      Text(
                        '1M',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        'Followers',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                         backgroundColor: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> NotificationScreen()));
                    },
                    child: const Icon(Icons.reply_rounded,color: Colors.white,size: 30,),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                       backgroundColor: Colors.grey),
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width,child: const Divider(color: Colors.grey,thickness: 0.5,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Row(
                    children: [
                      Text(
                        '200 ',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        'Videos',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    child: VerticalDivider(
                      thickness: 0.4,
                      color: Colors.grey,
                    ),
                    height: 35,
                  ),
                 Row(
                    children: [
                      Text(
                        '150 ',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        'Likes',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    child: VerticalDivider(
                      thickness: 0.4,
                      color: Colors.grey,
                    ),
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text(
                        '15 ',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        'Private ',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18),
                      ),
                      const Icon(Icons.lock,color: Colors.white,size: 20,)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerTiles extends StatelessWidget {
  final String name;
  final IconData iconData;
  const DrawerTiles({
    required this.name,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(12.0)),
      child: Row(children: [
       Icon(iconData,color: Colors.white54,size: 30,),
        const SizedBox(width: 10.0,),
        Text(
          name,
          style:
          GoogleFonts.roboto(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
        ),

      ],),);
  }
}
