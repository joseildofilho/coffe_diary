import 'package:coffe_diary/domain/usecases/create_brew_register.dart';
import 'package:coffe_diary/presentation/controllers/brew_controller.dart';
import 'package:coffe_diary/presentation/pages/add_brew/controller.dart';
import 'package:coffe_diary/presentation/pages/home/controller.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/brews_repository_memory.dart';
import 'domain/repositories/brews_repository.dart';

final inject = GetIt.I;

Future<void> startDependencies() async {
  _startRepositories();
  _startUseCases();
  _startControllers();
  _startPresenters();
}

void _startPresenters() {
  inject.registerLazySingleton<AddBrewPresenter>(
      () => AddBrewPresenter(inject<BrewController>()));
  inject.registerLazySingleton<HomePresenter>(
      () => HomePresenter(inject<BrewController>()));
}

void _startControllers() {
  inject.registerLazySingleton<BrewController>(
      () => BrewController(inject<CreateBrewRegister>()));
}

void _startUseCases() {
  inject.registerLazySingleton<CreateBrewRegister>(() => CreateBrewRegister());
}

void _startRepositories() {
  inject.registerLazySingleton<BrewsRepository>(() => BrewsRepositoryMemory());
}
