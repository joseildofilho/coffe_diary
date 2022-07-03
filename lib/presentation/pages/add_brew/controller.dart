import 'package:coffe_diary/presentation/controllers/brew_controller.dart';

class AddBrewPresenter {
  final BrewControllerImpl _brewController;

  AddBrewPresenter(BrewControllerImpl brewController)
      : _brewController = brewController;

  String? _description;

  String? validateDescription(String? description) {
    if (description != null) {
      _description = description;
    }
    return null;
  }

  Future<void> save() async {
    await _brewController.registerBrew(_description!).run();
  }
}
