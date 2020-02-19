import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState () {
    // TODO: implement createState
    return CustomCardState();
  }
}

class CustomCardState extends State<CustomCard> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset('image/image.jpg', fit: BoxFit.fill),
      ),
      elevation:10,
    );
  }
}