import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:fpdart/fpdart.dart';

abstract class BrewsRepository {
  TaskEither<Failure, List<Brew>> getBrews();
}