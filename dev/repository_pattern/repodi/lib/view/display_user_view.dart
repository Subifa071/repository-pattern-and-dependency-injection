import 'package:flutter/material.dart';

import '../di/di.dart';
import '../model/user.dart';
import '../repository/user_repository.dart';

class DisplayUserView extends StatelessWidget {
  const DisplayUserView({super.key});

  @override
  Widget build(BuildContext context) {
    UserRepository userRepository = getIt<UserRepository>();
    List<User> users = userRepository.getUsers();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            User user = users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Age: ${user.age}'),
                  Text('DOB: ${user.dob}'),
                  Text('Birth Time: ${user.birthTime}'),
                ],
              ),
              leading: CircleAvatar(
                child: Text(user.id.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
