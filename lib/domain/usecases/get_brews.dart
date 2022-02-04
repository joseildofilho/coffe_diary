import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/core/usecase/usecases.dart';
import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:coffe_diary/domain/repositories/brews_repository.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:fpdart/src/unit.dart';

class GetBrews extends UseCaseNoParam<List<Brew>> {
  final BrewsRepository _brewsRepository;

  GetBrews(this._brewsRepository);

  @override
  TaskEither<Failure, List<Brew>> call([Unit? _]) {
    return _brewsRepository.getBrews();
  }

}
