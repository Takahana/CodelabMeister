import 'package:codelab_meister/domain/codelab.dart';

class CodelabRepository {
  List<Codelab> get() {
    final List<Codelab> codelabs = [];
    for (int i = 1; i <= 10; i++) {
      codelabs.add(Codelab("Write your first Flutter app, part $i"));
    }
    return codelabs;
  }
}
