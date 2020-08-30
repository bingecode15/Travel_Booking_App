import 'package:flutter/material.dart';
import 'package:travel/constants.dart';

Padding buildSearchBar(Size size, String length) {
  return Padding(
    padding: length == "long"
        ? EdgeInsets.symmetric(
            horizontal: size.width * 0.1, vertical: size.height * 0.04)
        : EdgeInsets.all(0.0),
    child: Stack(
      children: <Widget>[
        Container(
          width: size.width * 0.8,
          height: size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(114.0)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05, top: size.height * 0.025),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Where Next?",
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0.0,
          child: Container(
            width: size.width * 0.17,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(114.0)),
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
