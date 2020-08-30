import 'package:flutter/material.dart';
import 'package:travel/Screens/LandingScreen/components/buildTitle.dart';
import 'package:travel/Screens/LandingScreen/components/places_staggered_view.dart';
import 'package:travel/Widgets/buildSearchBar.dart';
import 'package:travel/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                width: double.infinity,
                height: size.height * 0.55,
                fit: BoxFit.fill,
                image: AssetImage("assets/images/mumbai.png"),
              ),
              buildSearchBar(size, "long"),
              buildTitle(size),
            ],
          ),
          SizedBox(height: size.height * 0.012),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.06),
            child: Text(
              "Fav Getaways",
              style: kTitleTextStyle,
            ),
          ),
          SizedBox(height: size.height * 0.0075),
          PlacesStaggeredView(size: size, places: places)
        ],
      ),
    );
  }
}
