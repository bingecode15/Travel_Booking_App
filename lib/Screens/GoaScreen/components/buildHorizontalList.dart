import 'package:flutter/material.dart';

List<String> goaImages = [
  "assets/images/goa1.png",
  "assets/images/goa2.png",
  "assets/images/goa3.png",
  "assets/images/goa4.png",
];

Container buildHorizontalList(Size size) {
  return Container(
    height: 100.0,
    child: ListView.builder(
      itemCount: goaImages.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: size.width * 0.03),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(
            image: AssetImage(
              goaImages[index],
            ),
          ),
        ),
      ),
    ),
  );
}
