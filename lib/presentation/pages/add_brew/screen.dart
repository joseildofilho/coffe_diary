import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddBrewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Coffee Diary'),
    ));
  }
}

class _AddBrewForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final coffeeName = useTextEditingController();
    return Column(children: [
      TextInput();
    ],);
  }
}
