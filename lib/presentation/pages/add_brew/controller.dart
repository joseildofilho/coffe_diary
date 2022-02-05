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
  }

  String? validateCoffeeQuantiy(String? coffeeQuantity) {
    _coffeeQuantity = coffeeQuantity ?? '';
  }

  String? validateRatio(String? ratio) {
    _ratio = ratio ?? '';
  }

  String? validateBloomTime(DateTime? bloomTime) {
    if (bloomTime != null) {
      final x = bloomTime.subtract(366.days);
      print(x);
    }
    //_bloomTime = bloomTime ?? 0.minutes;
  }

  ValidateBrewParams _buildValidationParams() => ValidateBrewParams(
        coffeeName: _coffeeName,
        coffeeQuantity: _coffeeQuantity,
        ratio: _ratio,
        bloomTime: _bloomTime,
      );

  void save() {}
}
