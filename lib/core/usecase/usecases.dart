import 'package:fpdart/fpdart.dart';

import 'failure.dart';

abstract class UseCase<Param, Return> {
  TaskEither<Failures, Return> call(Param param);
}

abstract class UseCaseSync<Param, Return> {
  Either<Failures, Return> call(Param param);
}

abstract class UseCaseNoParam<Return> extends UseCase<Unit, Return> {
  @override
  TaskEither<Failures, Return> call([Unit param]);
}
