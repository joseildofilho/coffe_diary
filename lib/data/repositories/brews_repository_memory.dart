import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:coffe_diary/domain/repositories/brews_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';

import '../../core/usecase/failure.dart';

class BrewsRepositoryMemory implements BrewsRepository {
  @override
  TaskEither<Failures, List<Brew>> getBrews() {
    return TaskEither.of([]);
  }

}