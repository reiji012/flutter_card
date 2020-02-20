import 'package:flutter/material.dart';
import 'main.dart';

class DetailPage extends StatelessWidget {
  String heroTag;

  DetailPage(String heroTag) {
    this.heroTag = heroTag;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, //Widgetの全体の背景を透明にする
        body: Hero(
          tag: heroTag,
          child: Material(
            type: MaterialType.transparency,
              child: Container(
                color: Colors.white, //HeroWidget以下のツリーの背景を白色にする,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: imageContents(context),
                    ),
                    Container(
                      child: Text('content'),
                    )
                  ],
                ),
              )
          )
        )
    );
  }

  // 画像Widget
  Widget imageContents(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
        height: 277,
        color: Colors.white,
        child: Container(
            child: Stack(
              children: <Widget>[
                Image.asset('image/image.jpg', fit: BoxFit.cover,),
                Column(
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: statusBarHeight
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // これで両端に寄せる
                          children: <Widget>[
                            Container(),
                            Container(
                              child: RaisedButton(
                                child: Icon(Icons.close, color: Colors.white,),
                                color: Colors.blue,
                                shape: CircleBorder(),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return MyApp();
                                    }),
                                  );
                                },
                              ),
                            )
                          ]
                      ),
                    )
                  ],
                )
              ],
            )
        )
    );
  }
}