import 'package:intl/intl.dart';

import '../../model/user.dart';

class LocalDataSource {
  List<User> users = [
    User(
      id: 1,
      name: 'Local John',
      age: 20,
      dob: DateFormat('yyyy-MM-dd').format(DateTime(2003, 7, 1)),
      birthTime: '10:00',
    ),
    User(
      id: 2,
      name: 'Local Wick',
      age: 30,
      dob: DateFormat('yyyy-MM-dd').format(DateTime(2009, 1, 5)),
      birthTime: '12:00',
    ),
  ];

  bool addUser(User user) {
    users.add(user);
    return true;
  }

  List<User> getUsers() {
    return users;
  }
}
