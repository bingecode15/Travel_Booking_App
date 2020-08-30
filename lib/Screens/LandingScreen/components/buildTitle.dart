import 'package:flutter/material.dart';
import 'package:travel/constants.dart';

Positioned buildTitle(Size size) {
  return Positioned(
    bottom: 20.0,
    left: 20.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mumbai",
          style: kPlaceTextStyle.copyWith(
            fontSize: 54.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: size.height * 0.0075),
        Text(
          'Explore the "City of Dreams"',
          style: kContextTextStyle,
        ),
        SizedBox(height: size.height * 0.0075),
        RaisedButton(
          onPressed: () {},
          color: Color(0xFF4BAC99),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          child: Text(
            "Explore Places",
            style: kHintTextStyle.copyWith(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        )
      ],
    ),
  );
}
