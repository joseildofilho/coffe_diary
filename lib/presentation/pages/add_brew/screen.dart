import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddBrewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Diary'),
      ),
      body: _AddBrewForm(),
    );
  }
}

class _AddBrewForm extends HookWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          FormBuilderTextField(
            name: 'coffee_name',
            decoration: const InputDecoration(hintText: 'Coffee Name'),
          ),
          Row(children: <Widget>[
            Expanded(
              child: FormBuilderTextField(
                name: 'quantity',
                decoration: const InputDecoration(hintText: 'Coffee Quantity'),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FormBuilderTextField(
                name: 'ratio',
                decoration: const InputDecoration(hintText: 'ratio'),
              ),
            )
          ]),
          FormBuilderDateTimePicker(
            name: 'bloom_time',
            inputType: InputType.time,
            decoration: const InputDecoration(hintText: 'Bloom Time'),
            initialTime: const TimeOfDay(hour: 0, minute: 0),
            timePickerInitialEntryMode: TimePickerEntryMode.input,
          ),
        ],
      );
}
