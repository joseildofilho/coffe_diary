import 'package:coffe_diary/core/usecase/failure.dart';
import 'package:coffe_diary/core/usecase/success.dart';
import 'package:coffe_diary/core/usecase/usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

class CreateBrewRegister extends UseCase<CreateBrewRegisterParams, Success> {
  @override
  TaskEither<Failure, Success> call(CreateBrewRegisterParams param) {
    return _validateInput(param).toTask();
  }

  IOEither<NotificationBundle, Success> _validateInput(
      CreateBrewRegisterParams param) {
    final notifications = <Notification>[];

    if (param.coffeeName.isEmpty) {
      notifications.add(const InvalidCoffeeName());
    }

    if (param.coffeeQuantity <= 0.0) {
      notifications.add(const InvalidCoffeQuantity());
    }

    if (notifications.isEmpty) {
      return IOEither.of(success);
    }
    return IOEither.left(NotificationBundle(notifications));
  }
}

class CreateBrewRegisterParams extends Equatable {
  final String coffeeName, ratio;
  final double coffeeQuantity;
  final Duration bloomTime;

  const CreateBrewRegisterParams({
    required this.coffeeName,
    required this.coffeeQuantity,
    required this.ratio,
    required this.bloomTime,
  });

  @override
  List<Object?> get props => [coffeeName, coffeeQuantity, ratio, bloomTime];
}

class InvalidCoffeeName extends Notification {
  const InvalidCoffeeName() : super(message: 'InvalidCoffeeName');
}

class InvalidCoffeQuantity extends Notification {
  const InvalidCoffeQuantity() : super(message: 'InvalidCoffeQuantity');
}
