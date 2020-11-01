import 'package:flutter/material.dart';

class CodelabDetailPage extends StatefulWidget {
  @override
  _CodelabDetailPageState createState() => _CodelabDetailPageState();
}

class _CodelabDetailPageState extends State<CodelabDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Text("hoge"),
    );
  }
}

class CodelabDetailPageRoute {
  MaterialPageRoute get() {
    return MaterialPageRoute<void>(builder: (BuildContext context) {
      return CodelabDetailPage();
    });
  }
}
