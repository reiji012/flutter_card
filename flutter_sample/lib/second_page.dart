import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              child: imageContents(context),
            ),
            Container(
              child: Text(
                'content'
              ),
            )
          ],
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