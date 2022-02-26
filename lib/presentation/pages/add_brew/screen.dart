import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/src/provider.dart';
import 'package:time/time.dart';

import 'controller.dart';

class AddBrewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Diary'),
      ),
      body: Column(
        children: [
          _AddBrewForm(),
          ElevatedButton(
              onPressed: context.read<AddBrewController>().save,
              child: const Text('Save'))
        ],
      ),
    );
  }
}

class _AddBrewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = context.read<AddBrewController>();
    return FormBuilder(
        child: Column(
      children: [
        _formInput('coffee_name', 'Coffee Name', controller.validateCoffeeName),
        Row(children: <Widget>[
          Expanded(
            child: _formInput('quantity', 'Coffee Quantity',
                controller.validateCoffeeQuantiy),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: _formInput('ratio', 'ratio', controller.validateRatio),
          )
        ]),
        _DurationPicker(),
      ],
    ));
  }

  Widget _formInput(
          String name, String hintText, FormFieldValidator<String> validator) =>
      FormBuilderTextField(
        name: name,
        decoration: InputDecoration(hintText: hintText),
        validator: validator,
        autovalidateMode: AutovalidateMode.always,
      );
}

class _DurationPicker extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final duration = useState(0.seconds);
    final textController = useTextEditingController();
    final controller = context.read<AddBrewController>();
    textController.value = TextEditingValue(text: duration.value.toString());

    return FormBuilderTextField(
      controller: textController,
      validator: controller.validateBloomTime,
      onTap: () =>
          showDurationPicker(context: context, initialTime: duration.value)
              .then((value) => duration.value = value ?? 0.seconds),
      name: 'bloom_time',
      decoration: const InputDecoration(hintText: 'Bloom Time'),
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
