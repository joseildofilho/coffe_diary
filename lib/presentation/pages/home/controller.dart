import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final ValueNotifier<MainListState> _mainList;

  HomeController({required ValueNotifier<MainListState> mainList})
      : _mainList = mainList {
    _mainList.value = MainListState.loading();
  }
}
