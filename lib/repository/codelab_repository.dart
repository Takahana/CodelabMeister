import 'package:codelab_meister/domain/codelab.dart';
import 'package:codelab_meister/store/codelab_store.dart';

class CodelabRepository {
  CodelabStore _store = CodelabStore();

  List<Codelab> getAll(int offset) {
    return _store.getAll(offset);
  }

  Set<Codelab> getAllCompleted() {
    return _store.completed;
  }

  void updateCompleted(Codelab codelab) {
    _store.completed.add(codelab);
  }

  void updateUnCompleted(Codelab codelab) {
    _store.completed.remove(codelab);
  }
}
