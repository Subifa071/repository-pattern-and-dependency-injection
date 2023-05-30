import 'package:flutter/material.dart';

import '../di/di.dart';
import '../model/user.dart';
import '../repository/user_repository.dart';

class AddUserView extends StatelessWidget {
  final User user = User(
    id: 1,
    name: 'Jack',
    age: 23,
    dob: '2005/6/8',
    birthTime: '21:00',
  );

  AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    UserRepository userRepository = getIt<UserRepository>();
    bool isUserAdded = userRepository.addUser(user);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add User'),
        ),
        body: Center(
          child: Text(
            isUserAdded ? 'User added successfully' : 'User not added',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
