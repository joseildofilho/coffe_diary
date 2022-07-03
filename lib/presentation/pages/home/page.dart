import 'package:coffe_diary/presentation/pages/home/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../../injection.dart';
import 'controller.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = inject<HomePresenter>();

    return MultiProvider(
      providers: [
        Provider(
          create: (_) => controller,
        )
      ],
      builder: (_, __) => const HomeScreen(),
    );
  }
}
