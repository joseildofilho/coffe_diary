import 'package:coffe_diary/domain/usecases/validate_brew.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/usecase/failure.dart';
import '../../../core/usecase/success.dart';

class AddBrewController {
  final ValidateBrew _validateBrew = ValidateBrew();
  String? _description;

  String? validateCoffeeName(String? coffeeName) {
    return null;
  }

  String? validateCoffeeQuantiy(String? coffeeQuantity) {
    return null;
  }

  String? validateRatio(String? ratio) {
    return null;
  }

  String? validateDescription(String? description) {
    _description = description;
    return _validateForm()
        .match((f) => 'Description cannot be Empty', (_) => null);
  }

  String? validateBloomTime(String? bloomTime) {
    return null;
  }

  Either<List<Failure>, Success> _validateForm() =>
      _validateBrew(ValidateBrewParams(description: _description));

  void save() {}
}
