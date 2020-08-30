import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/Screens/LandingScreen/components/body.dart';
import 'package:travel/Widgets/bottomNavigation.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Body(size: size),
        bottomNavigationBar: BottomNavigation(size: size),
      ),
    );
  }
}
