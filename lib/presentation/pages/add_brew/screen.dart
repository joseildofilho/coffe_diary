import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import 'presenter.dart';

class AddBrewScreen extends StatelessWidget {
  const AddBrewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Coffee Diary'),
        ),
        body: Column(
          children: [
            _AddBrewForm(),
            ElevatedButton(
                onPressed: context.read<AddBrewPresenter>().save,
                child: const Text('Save'))
          ],
        ),
      );
}

class _AddBrewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = context.read<AddBrewPresenter>();
    return FormBuilder(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            _formInput(
                'Description', 'Description', controller.validateDescription),
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
