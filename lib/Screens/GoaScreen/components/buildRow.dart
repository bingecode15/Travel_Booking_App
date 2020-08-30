import 'package:flutter/material.dart';
import 'package:travel/constants.dart';

Row buildRow(Size size, String text) {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Container(
          width: size.width * 0.4,
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: kContextTextStyle.copyWith(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Icon(
          Icons.remove,
          color: Colors.grey,
        ),
      ),
      Container(
        alignment: Alignment.center,
        width: size.width * 0.1,
        child: Text(
          "1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Icon(
          Icons.add,
          color: Colors.grey,
        ),
      ),
    ],
  );
}
