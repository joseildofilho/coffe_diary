abstract class Failure {}

class NotificationBundle extends Failure {
    Iterable<Notification> notifications;

    NotificationBundle(this.notifications);
}

class Notification {
    final String message;

    Notification({required this.message});
}
