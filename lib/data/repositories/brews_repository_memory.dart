import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:coffe_diary/domain/repositories/brews_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';

class BrewsRepositoryMemory implements BrewsRepository {
  @override
  TaskEither<Failure, List<Brew>> getBrews() {
    return TaskEither.of([]);
  }

}