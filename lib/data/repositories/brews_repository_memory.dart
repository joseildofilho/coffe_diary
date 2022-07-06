import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:coffe_diary/domain/repositories/brews_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:hive/hive.dart';

import '../../core/usecase/failure.dart';

class BrewsRepositoryMemory implements BrewsRepository {
  final _brewsKey = 'brews';
  final _brewsBox = 'brews';

  @override
  TaskEither<Failures, List<Brew>> getBrews() {
    final brewBox = Hive.box(_brewsBox);
    return brewBox.isEmpty
        ? TaskEither.of([])
        : TaskEither.of([...brewBox.get(_brewsKey)]);
  }

  @override
  TaskEither<Failures<Object>, List<Brew>> saveBrew(Brew brew) =>
      TaskEither<Failures, List<Brew>>(() async {
        final brewBox = Hive.box(_brewsBox);
        List<Brew> brews;
        if (brewBox.isNotEmpty) {
          brews = [brewBox.get(_brewsKey), brew];
        } else {
          brews = [brew];
        }
        brewBox.put(_brewsKey, brews);
        return right(brews);
      });
}
