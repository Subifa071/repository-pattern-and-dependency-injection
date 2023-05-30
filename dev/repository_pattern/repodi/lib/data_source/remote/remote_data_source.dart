import 'package:intl/intl.dart';

import '../../model/user.dart';

class RemoteDataSource {
  List<User> users = [
    User(
      id: 1,
      name: 'Remote John',
      age: 20,
      dob: DateFormat('yyyy-MM-dd').format(DateTime(2003, 7, 1)),
      birthTime: '10:00',
    ),
    User(
      id: 2,
      name: 'Remote Wick',
      age: 30,
      dob: DateFormat('yyyy-MM-dd').format(DateTime(2009, 1, 5)),
      birthTime: '12:00',
    ),
    User(
      id: 3,
      name: 'Remote Rick',
      age: 30,
      dob: DateFormat('yyyy-MM-dd').format(DateTime(2000, 4, 2)),
      birthTime: '11:00',
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
