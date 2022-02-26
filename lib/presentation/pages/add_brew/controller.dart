import 'package:coffe_diary/domain/usecases/validate_brew.dart';
import 'package:flutter/cupertino.dart';
import 'package:time/time.dart';

import 'state.dart';

class AddBrewController {
  final ValidateBrew _validateBrew;

  final ValueNotifier<AddBrewFormState> _formSubmit;

  AddBrewController(
      {required ValueNotifier<AddBrewFormState> formSubmit,
      required ValidateBrew validateBrew})
      : _formSubmit = formSubmit,
        _validateBrew = validateBrew;

  String _coffeeName = '', _coffeeQuantity = '', _ratio = '';
  Duration _bloomTime = 0.seconds;

  String? validateCoffeeName(String? coffeeName) {
    _coffeeName = coffeeName ?? '';
    return null;
  }

  String? validateCoffeeQuantiy(String? coffeeQuantity) {
    _coffeeQuantity = coffeeQuantity ?? '';
    return null;
  }

  String? validateRatio(String? ratio) {
    _ratio = ratio ?? '';
    return null;
  }

  String? validateBloomTime(String? bloomTime) {
    if (bloomTime != null) {
        final times = bloomTime.split(':').map(int.tryParse).whereType<int>();
      final duration = Duration(hours: times.first, minutes: times.skip(1).first);
      _bloomTime = duration;
    }
    return null;
  }

  void save() {}
}
