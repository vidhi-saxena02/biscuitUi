import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  Responsive({required this.tablet,required this.mobile,required this.desktop});

  static bool isMobile(BuildContext context,)=>MediaQuery.of(context).size.width < 550;
  static bool isTablet(BuildContext context,)=>MediaQuery.of(context).size.width >= 550 && MediaQuery.of(context).size.width <1200;
  static bool isDesktop(BuildContext context,)=>MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constr){
      if(constr.maxWidth >=1200){
        return desktop;
      }
      else if(constr.maxWidth >= 700){
        return tablet;
      }
      else{
        return mobile;
      }
    } );
  }
}
