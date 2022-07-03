import 'package:coffe_diary/presentation/controllers/brew_controller.dart';
import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:flutter/foundation.dart';
import 'package:functional_listener/functional_listener.dart';

class HomePresenter {
  final ValueListenable<MainListState> mainList;

  HomePresenter(BrewController brewController)
      : mainList = brewController.mainList
            .map((state) => MainListState.done(brew: state.brews));
}
