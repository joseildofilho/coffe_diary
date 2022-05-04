import 'package:coffe_diary/domain/usecases/validate_brew.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/usecase/failure.dart';
import '../../../core/usecase/success.dart';
import '../../../domain/entities/brew.dart';
import '../../../domain/entities/ratio.dart';
import 'state.dart';

class AddBrewController {
  String? _coffeeName, _coffeeQuantity, _ratio, _bloomTime, _description;

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

  String? validateDescription(String? description) {
    _description = description;
    return _validateForm()
        .match((f) => 'Description cannot be Empty', (_) => null);
  }

  String? validateBloomTime(String? bloomTime) {
    if (bloomTime != null) {
      _bloomTime = bloomTime;
    }
    return null;
  }

  Either<List<Failure>, Success> _validateForm() => Brew.build(
          coffeeQuantity: 0.0,
          coffeType: 'arabica',
          ratio: const Ratio.oneOne(),
          duration: Duration.zero,
          score: 0,
          description: _description ?? 'No Description')
      .map((_) => success)
      .mapLeft((failures) => failures.failures);

  void save() {}
}
