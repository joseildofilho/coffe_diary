import 'package:coffe_diary/injection.dart';
import 'package:coffe_diary/presentation/pages/add_brew/page.dart';
import 'package:coffe_diary/presentation/pages/home/page.dart';
import 'package:flutter/material.dart';

void main() {
  startDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Coffee Diary',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const Home(),
          '/add_brew': (_) => const AddBrew(),
        },
      );
}
