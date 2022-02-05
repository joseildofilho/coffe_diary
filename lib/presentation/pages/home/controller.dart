import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:coffe_diary/presentation/pages/home/tunnels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  HomeController(HomeTunnels tunnels) : _mainListTunnel = tunnels.mainList;

  final ValueNotifier<MainListState> _mainListTunnel;
}
