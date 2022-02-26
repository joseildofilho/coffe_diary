import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class Failures {
  final List<Failure> failures;

  const Failures(this.failures);
}

class NotificationBundle extends Failure {
  final Iterable<Notification> notifications;

  NotificationBundle(this.notifications);

  @override
  List<Object?> get props => notifications.toList();
}

class Notification extends Equatable {
  final String message;

  const Notification({required this.message});

  @override
  List<Object?> get props => [message];
}
