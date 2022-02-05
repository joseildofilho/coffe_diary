import 'package:coffe_diary/injection.dart';
import 'package:coffe_diary/presentation/pages/add_brew/page.dart';
import 'package:flutter/material.dart';

void main() {
  startDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddBrew(),
    );
  }
}
