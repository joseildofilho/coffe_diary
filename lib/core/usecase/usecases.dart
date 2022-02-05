import 'package:fpdart/fpdart.dart';

import 'failure.dart';

abstract class UseCase<Param, Return> {
  TaskEither<Failure, Return> call(Param param);
}

abstract class UseCaseSync<Param, Return> {
  IOEither<Failure, Return> call(Param param);
}

abstract class UseCaseNoParam<Return> extends UseCase<Unit, Return> {
  @override
  TaskEither<Failure, Return> call([Unit param]);
}
