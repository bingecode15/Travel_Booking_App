import 'package:flutter/material.dart';
import 'package:travel/Screens/GoaScreen/components/buildHorizontalList.dart';
import 'package:travel/Screens/GoaScreen/components/buildRow.dart';
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
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: size.height * 0.3,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/goa_2.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                buildSearchBar(size, "short"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.03),
                  Text(
                    "Goa",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(height: size.height * 0.03),
                  buildHorizontalList(size),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.05),
                    child: Text(
                      "Goa is the best place to spend a holiday under a budget. The serene and calm beaches can elevate your mood.",
                      style: kInfoTextStyle,
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  buildRow(size, "No. of adults"),
                  SizedBox(height: size.height * 0.02),
                  buildRow(size, "No. of children"),
                  SizedBox(height: size.height * 0.02),
                  buildRow(size, "No. of rooms"),
                  SizedBox(height: size.height * 0.04),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.05),
                    child: SizedBox(
                      height: size.height * 0.06,
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () {},
                        color: Color(0xFFFB6137),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          "Plan A Trip",
                          style: kContextTextStyle.copyWith(fontSize: 17.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
