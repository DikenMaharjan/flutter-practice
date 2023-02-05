import 'package:flutter_firebase_login/user.dart';

abstract class AppEvent {
  const AppEvent();
}

class AppLogoutRequested extends AppEvent {
  const AppLogoutRequested();
}

class AppUserChanged extends AppEvent {
  const AppUserChanged(this.user);

  final User? user;
}
