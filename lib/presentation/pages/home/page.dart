import 'package:coffe_diary/injection.dart';
import 'package:coffe_diary/presentation/pages/home/screen.dart';
import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:coffe_diary/presentation/pages/home/tunnels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tunnels = HomeTunnels(mainList: ValueNotifier(MainListInital()));

    return MultiProvider(
      providers: [
        Provider(create: (_) => tunnels),
        Provider(
          create: (_) => inject<HomeController>(param1: tunnels),
        )
      ],
      child: const HomeScreen(),
    );
  }
}
