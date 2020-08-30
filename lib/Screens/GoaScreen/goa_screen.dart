import 'package:flutter/material.dart';
import 'package:travel/Screens/GoaScreen/components/body.dart';
import 'package:travel/Widgets/bottomNavigation.dart';

class GoaScreen extends StatelessWidget {
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
