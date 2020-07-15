import 'package:flutter/material.dart';
import 'package:flutter_hooks_fab_scroll_tutorial/pages/second_page.dart';
import 'pages/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}

// firstPage => useAnimationController & useScrollControllerForAnimation (customHook)
// secondPage => useAnimationController & animatedWidget
