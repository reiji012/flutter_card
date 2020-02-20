import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var itemList = ['one', 'two', 'three', 'for'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: cardPageView(),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget cardPageView() {
    return Container(
      height: 315,
      child: PageView(
        // store this controller in a State to save the carousel scroll position
        controller: PageController(viewportFraction: 0.8),
        children: <Widget>[
          for(var item in itemList ) Container(
            // 間隔が狭くなるので若干marginを付けてあげる
            margin: EdgeInsets.only(
                right: 10,
                bottom: 20
            ),
            child: CustomCard(item),
          )
        ],
      ),
    );
  }
}
