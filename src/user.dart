class User {
  final String _email;

  User(this._email);

  get email => _email;
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class AdminUser extends User with MailSystem {
  AdminUser(super.email);

  @override
  get email => getMailSystem();
}

mixin MailSystem on User {
  String getMailSystem() {
    return _email.split('@')[1];
  }
}

class UserManager<T extends User> {
  final List<T> _users = <T>[];

  // Возвращаем копию списка, чтобы не могли внести изменения
  get userList => <T>[..._users];

  void add(T user) {
    _users.add(user);
  }

  void remove(T user) {
    _users.remove(user);
  }

  void printEmailList() {
    for (var user in userList) {
      print(user.email);
    }
  }
}
