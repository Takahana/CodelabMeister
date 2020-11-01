class Codelab {
  var title;
  var completed;

  Codelab(title, completed) {
    this.title = title;
    this.completed = completed;
  }

  Codelab.fromTitle(title) {
    this.title = title;
    this.completed = false;
  }
}
