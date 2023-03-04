import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'desktop.dart';
import 'mobilescreen.dart';
import 'tabletscreen.dart';



const desktopScreenSize = 1200;
const tabletScreenSize = 800;
const mobileScreenSize = 300;

class Layout extends StatelessWidget {
  const Layout({
    Key? key,
  }) : super(key: key);

  static bool isMobile(context) =>
      MediaQuery.of(context).size.width < tabletScreenSize;
  static bool isTablet(context) =>
      MediaQuery.of(context).size.width > mobileScreenSize &&
      MediaQuery.of(context).size.width <= tabletScreenSize;
  static bool isDesktop(context) =>
      MediaQuery.of(context).size.width >= desktopScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= desktopScreenSize) {
        return  Padding(
          padding:Layout.isTablet(context)? 
          const EdgeInsets.only(top:20.0,left: 80,right: 80,bottom: 20)
          :const EdgeInsets.only(top:20.0,left: 120,right: 120,bottom: 20),
          child:  const DesktopScreen(),
        );
      } else if (constraints.maxWidth < desktopScreenSize &&
          constraints.maxWidth >= tabletScreenSize) {
        return  const TabletScreen();
      } else {
        return   const MobileScreen();
      }
    });
  }
}
