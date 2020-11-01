import 'package:codelab_meister/codelab_detail_page.dart';
import 'package:codelab_meister/domain/codelab.dart';
import 'package:codelab_meister/repository/codelab_repository.dart';
import 'package:flutter/material.dart';

class Codelabs extends StatefulWidget {
  @override
  _CodelabsState createState() => _CodelabsState();
}

class _CodelabsState extends State<Codelabs> {
  final List<Codelab> _codelabs = <Codelab>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  final codelabRepository = CodelabRepository();

  @override
  Widget build(BuildContext context) {
    return _buildCodelabs();
  }

  Widget _buildCodelabs() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;
          if (index >= _codelabs.length) {
            _codelabs.addAll(codelabRepository.getAll(index));
          }
          return _buildRow(_codelabs[index]);
        });
  }

  Widget _buildRow(Codelab codelab) {
    final alreadyCompleted =
        codelabRepository.getAllCompleted().contains(codelab);
    return ListTile(
      title: Text(
        codelab.title,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadyCompleted ? Icons.check_circle : Icons.check_circle_outline,
        color: alreadyCompleted ? Colors.green : null,
      ),
      onTap: () {
        setState(() {
          if (alreadyCompleted) {
            codelabRepository.updateUnCompleted(codelab);
          } else {
            codelabRepository.updateCompleted(codelab);
          }
        });
      },
      onLongPress: () {
        _showDetailPage();
      },
    );
  }

  void _showDetailPage() {
    Navigator.of(context).push(CodelabDetailPageRoute().get());
  }
}
