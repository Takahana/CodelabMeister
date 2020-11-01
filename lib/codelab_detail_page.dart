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
          title: Text("Detail"),
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(data.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.left),
              SizedBox(height: 8),
              Text(data.introduction),
            ],
          ),
        ));
  }
}

class CodelabDetailPageRoute {
  MaterialPageRoute get(id) {
    return MaterialPageRoute<void>(builder: (BuildContext context) {
      return CodelabDetailPage(id: id);
    });
  }
}
