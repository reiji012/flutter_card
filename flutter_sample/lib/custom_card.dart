import 'package:flutter/material.dart';
import 'detail_page.dart';

class CustomCard extends StatefulWidget {
  CustomCard(this.heroTag);

  String heroTag;

  @override
  State<StatefulWidget> createState() {
    return CustomCardState(heroTag);
  }
}

class CustomCardState extends State<CustomCard> {
  CustomCardState(this.heroTag);

  String heroTag;
  var _hasPadding = false;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Material(
        type: MaterialType.transparency,
        child: content(),
      ),
    );
  }

  Widget content() {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 80),
      padding: EdgeInsets.all(_hasPadding ? 10 : 0),
      child: GestureDetector(
        onTapDown: (TapDownDetails downDetails) {
          setState(() {
            _hasPadding = true;
          });
        },
        onTap: () {
          print('Card tapped.');
          setState(() {
            _hasPadding = false;
          });
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (_, __, ___) => DetailPage(heroTag),
              ));
        },
        onTapCancel: () {
          setState(() {
            _hasPadding = false;
          });
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset('image/image.jpg', fit: BoxFit.fill),
          ),
          elevation: 10,
        ),
      ),
    );
  }
}
