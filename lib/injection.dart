import 'package:get_it/get_it.dart';

import 'data/repositories/brews_repository_memory.dart';
import 'domain/repositories/brews_repository.dart';
import 'domain/usecases/get_brews.dart';

final inject = GetIt.I;

Future<void> startDependencies() async {
  _startRepositories();
  _startUseCases();
}

void _startRepositories() {
  inject.registerLazySingleton<BrewsRepository>(() => BrewsRepositoryMemory());
}

void _startUseCases() {
  inject.registerFactory<GetBrews>(() => GetBrews(inject<BrewsRepository>()));
}
