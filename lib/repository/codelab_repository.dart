import 'package:codelab_meister/domain/codelab.dart';
import 'package:codelab_meister/store/codelab_store.dart';

class CodelabRepository {
  CodelabStore _store = CodelabStore();

  Codelab get(int id) {
    return _store.getAll().firstWhere((element) => element.id == id);
  }

  List<Codelab> getAll() {
    return _store.getAll();
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
