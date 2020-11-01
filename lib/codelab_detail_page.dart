import 'package:codelab_meister/repository/codelab_repository.dart';
import 'package:flutter/material.dart';

class CodelabDetailPage extends StatefulWidget {
  final int id;

  const CodelabDetailPage({Key key, this.id}) : super(key: key);

  @override
  _CodelabDetailPageState createState() => _CodelabDetailPageState();
}

class _CodelabDetailPageState extends State<CodelabDetailPage> {
  final codelabRepository = CodelabRepository();

  @override
  Widget build(BuildContext context) {
    final int id = widget.id;
    final data = codelabRepository.get(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Text(data.introduction),
    );
  }
}

class CodelabDetailPageRoute {
  MaterialPageRoute get(id) {
    return MaterialPageRoute<void>(builder: (BuildContext context) {
      return CodelabDetailPage(id: id);
    });
  }
}
