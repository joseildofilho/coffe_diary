import 'package:coffe_diary/presentation/pages/home/screen.dart';
import 'package:coffe_diary/presentation/pages/home/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainList = useValueNotifier<MainListState>(MainListInitial());

    final controller = HomeController(mainList: mainList);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: mainList,
        ),
        Provider(
          create: (_) => controller,
        )
      ],
      builder: (_,__) => const HomeScreen(),
    );
  }
}
