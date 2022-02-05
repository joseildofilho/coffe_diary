import 'package:flutter/cupertino.dart';

import 'state.dart';

class AddBrewController {
  final ValueNotifier<AddBrewFormState> _formSubmit;

  AddBrewController({required ValueNotifier<AddBrewFormState> formSubmit})
      : _formSubmit = formSubmit;
}
