import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  HomeController({required ValueNotifier<MainListState> mainList})
      : _mainListTunnel = mainList;

  final ValueNotifier<MainListState> _mainListTunnel;
}
