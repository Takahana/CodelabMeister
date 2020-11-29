import 'package:codelab_meister/repository/codelab_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CodelabDetailPage extends StatefulWidget {
  final int id;

  const CodelabDetailPage({Key key, this.id}) : super(key: key);

  @override
  _CodelabDetailPageState createState() => _CodelabDetailPageState();
}

class _CodelabDetailPageState extends State<CodelabDetailPage> {
  CodelabRepository _codelabRepository;

  @override
  Widget build(BuildContext context) {
    final int id = widget.id;
    _codelabRepository = context.read(codelabRepositoryProvider);
    final codelab = _codelabRepository.get(id);
    final alreadyCompleted =
        _codelabRepository.getAllCompleted().contains(codelab);
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                alreadyCompleted
                    ? Icons.check_circle
                    : Icons.check_circle_outline,
                color: alreadyCompleted ? Colors.green : null,
              ),
              SizedBox(height: 8),
              Text(codelab.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.left),
              SizedBox(height: 8),
              Text(codelab.introduction),
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
