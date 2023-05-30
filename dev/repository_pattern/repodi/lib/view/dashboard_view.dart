import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    // final DateTime now = DateTime.now();
    // final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
    // final DateFormat timeFormat = DateFormat('HH:mm');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository and Dependency Injection'),
      ),
      body: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/addUser');
              },
              child: const Text('Add User'),
            ),
            // Text(dateFormat.format(now)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/displayUser');
              },
              child: const Text('Display User '),
            ),
            // Text(timeFormat.format(now)),
          ],
        ),
      ),
    );
  }
}
