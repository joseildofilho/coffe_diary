import 'package:coffe_diary/domain/usecases/validate_brew.dart';
import 'package:coffe_diary/presentation/pages/add_brew/controller.dart';
import 'package:coffe_diary/presentation/pages/add_brew/screen.dart';
import 'package:coffe_diary/presentation/pages/add_brew/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class AddBrew extends HookWidget {
  const AddBrew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formSubmit = useValueNotifier(AddBrewFormState.initial());

    final controller =
        AddBrewController(formSubmit: formSubmit, validateBrew: ValidateBrew());

    return Provider(
      create: (_) => controller,
      child: const AddBrewScreen(),
    );
  }
}
