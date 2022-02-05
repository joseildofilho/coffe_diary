import 'package:coffe_diary/presentation/pages/home/screen.dart';
import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainList = useValueNotifier(MainListInital());

    final controller = HomeController(mainList: mainList);

    return MultiProvider(
      providers: [
        Provider(create: (_) => mainList),
        Provider(
          create: (_) => controller,
        )
      ],
      child: const HomeScreen(),
    );
  }
}
