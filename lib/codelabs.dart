import 'package:flutter/material.dart';

class Codelabs extends StatefulWidget {
  @override
  _CodelabsState createState() => _CodelabsState();
}

class _CodelabsState extends State<Codelabs> {
  @override
  Widget build(BuildContext context) {
    final codelabName = "Write your first Flutter app, part 1";
    return Text(codelabName);
  }
}
