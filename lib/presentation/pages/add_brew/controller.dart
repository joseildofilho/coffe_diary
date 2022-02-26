import 'package:coffe_diary/domain/usecases/validate_brew.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:time/time.dart';

import '../../../core/usecase/failure.dart';
import '../../../core/usecase/success.dart';
import '../../../domain/entities/brew.dart';
import '../../../domain/entities/ratio.dart';
import 'state.dart';

class AddBrewController {
  final ValidateBrew _validateBrew;

  final ValueNotifier<AddBrewFormState> _formSubmit;

  AddBrewController(
      {required ValueNotifier<AddBrewFormState> formSubmit,
      required ValidateBrew validateBrew})
      : _formSubmit = formSubmit,
        _validateBrew = validateBrew;

  String? _coffeeName, _coffeeQuantity, _ratio, _bloomTime;

  String? validateCoffeeName(String? coffeeName) {
    _coffeeName = coffeeName ?? '';
    return null;
  }

  String? validateCoffeeQuantiy(String? coffeeQuantity) {
    _coffeeQuantity = coffeeQuantity ?? '';
    return null;
  }

  String? validateRatio(String? ratio) {
    if (_ratio == null && (ratio == null || ratio.isEmpty)) {
      return null;
    }
    _ratio = ratio ?? '';
    return _validateForm().match((f) => 'Ratio canot be Empty', (_) => null);
  }

  String? validateBloomTime(String? bloomTime) {
    if (bloomTime != null) {
      _bloomTime = bloomTime;
    }
    return null;
  }

  Either<Failures, Success> _validateForm() {
    final ratio = Ratio.build(ratio: _ratio ?? '');
    return ratio.map((_) => success).mapLeft((f) => Failures([f]));
  }

  void save() {}
}
