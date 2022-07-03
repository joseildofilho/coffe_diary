import 'package:coffe_diary/presentation/pages/add_brew/controller.dart';
import 'package:coffe_diary/presentation/pages/add_brew/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../../injection.dart';

class AddBrew extends HookWidget {
  const AddBrew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => inject<AddBrewPresenter>(),
      child: const AddBrewScreen(),
    );
  }
}
