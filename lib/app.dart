import 'package:flutter/material.dart';

import 'home_page/page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage().buildPage(null),
    );
  }
}