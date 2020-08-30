import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel/Screens/GoaScreen/goa_screen.dart';
import 'package:travel/constants.dart';

List places = [
  {
    "image": "assets/images/goa.png",
    "name": "Goa",
  },
  {
    "image": "assets/images/delhi.png",
    "name": "Delhi",
  },
  {
    "image": "assets/images/leh.png",
    "name": "Leh",
  },
];

class PlacesStaggeredView extends StatelessWidget {
  const PlacesStaggeredView({
    Key key,
    @required this.size,
    @required this.places,
  }) : super(key: key);

  final Size size;
  final List places;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Container(
        height: 275.0,
        width: double.infinity,
        child: StaggeredGridView.countBuilder(
          itemCount: places.length,
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (places[index]["name"] == "Goa") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoaScreen(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(places[index]["image"]),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    places[index]["name"],
                    style: kPlaceTextStyle,
                  ),
                ),
              ),
            );
          },
          staggeredTileBuilder: (int index) =>
              StaggeredTile.count(1, index == 0 ? 1.5 : 0.75),
        ),
      ),
    );
  }
}
