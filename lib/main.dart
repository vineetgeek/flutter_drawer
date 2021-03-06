import 'package:flutter/material.dart';

import 'Home.dart';
import 'category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer App',
      theme: ThemeData.dark(),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext) => Category(),
      },
    );
  }
}
