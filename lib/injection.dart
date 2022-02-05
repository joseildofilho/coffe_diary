import 'package:coffe_diary/presentation/pages/home/controller.dart';
import 'package:coffe_diary/presentation/pages/home/tunnels.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/brews_repository_memory.dart';
import 'domain/repositories/brews_repository.dart';
import 'domain/usecases/get_brews.dart';

final inject = GetIt.I;

Future<void> startDependencies() async {
  _startRepositories();
  _startUseCases();
  _controllers();
}

void _startRepositories() {
  inject.registerLazySingleton<BrewsRepository>(() => BrewsRepositoryMemory());
}

void _startUseCases() {
  inject.registerFactory<GetBrews>(() => GetBrews(inject<BrewsRepository>()));
}

void _controllers() {
  inject.registerFactoryParam<HomeController, HomeTunnels, void>(
      (tunnels, _) => HomeController(tunnels));
}
