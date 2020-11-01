import 'package:codelab_meister/domain/codelab.dart';

class CodelabStore {
  Set<Codelab> completed = Set();
  List<Codelab> _data = [
    Codelab(
        0,
        "Write Your First Flutter App, part 1",
        "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.\nIn this codelab, you'll create a simple mobile Flutter app. If you're familiar with object-oriented code and basic programming concepts—such as variables, loops, and conditionals—then you can complete the codelab. You don't need previous experience with Dart, mobile, or web programming.",
        "https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1",
        false),
    Codelab(
        1,
        "Write Your First Flutter App, part 2",
        "Flutter is Google's UI toolkit for building beautiful, natively compiled apps for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.\nIn this codelab, you'll extend a basic, mobile Flutter app to include interactivity. You'll also create a second page (called a route) that the user can navigate to. Finally, you'll modify the app's theme (color). This codelab extends part 1, where you create an infinite lazily loaded list, but we'll provide the starting code, if you'd like to start with part 2.",
        "https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2",
        false)
  ];

  List<Codelab> getAll() {
    return _data;
  }
}
