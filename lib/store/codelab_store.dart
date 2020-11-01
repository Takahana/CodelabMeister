import 'package:codelab_meister/domain/codelab.dart';

class CodelabStore {
  List<Codelab> loaded = [];
  Set<Codelab> completed = Set();

  List<Codelab> getAll(int offset) {
    final List<Codelab> codelabs = [];

    for (int i = 1; i <= 10; i++) {
      codelabs.add(Codelab.fromTitle(
          "Write your first Flutter app, part ${i + offset}"));
    }
    loaded.addAll(codelabs);
    return codelabs;
  }
}
