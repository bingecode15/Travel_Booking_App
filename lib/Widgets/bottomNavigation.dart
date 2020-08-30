import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(300.0)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/gps.svg"),
              title: Text("Near Me"),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/luggage.svg"),
              title: Text("Itineary"),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/notification.svg"),
              title: Text("Offers"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/profile.png"),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
