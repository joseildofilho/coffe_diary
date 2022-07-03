import 'package:coffe_diary/domain/usecases/create_brew_register.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/usecase/failure.dart';
import '../../domain/entities/brew.dart';
import 'brew_state.dart';

class BrewController {
  final ValueNotifier<BrewState> mainList = ValueNotifier(BrewState(brews: []));

  final CreateBrewRegister _createBrewRegister;

  BrewController(this._createBrewRegister);

  TaskEither<Failures, List<Brew>> registerBrew(String description) {
    final params = CreateBrewRegisterParams(description: description);
    return _createBrewRegister(params).map((brews) {
      print('register done');
      mainList.value = BrewState(brews: brews);
      return brews;
    });
  }
}
