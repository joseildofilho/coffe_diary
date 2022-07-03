import 'package:coffe_diary/domain/entities/brew.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/usecase/failure.dart';

abstract class BrewsRepository {
  TaskEither<Failures, List<Brew>> getBrews();
}