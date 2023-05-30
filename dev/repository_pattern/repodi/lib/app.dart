import 'package:flutter/material.dart';
import 'package:repodi/view/add_user_view.dart';
import 'package:repodi/view/dashboard_view.dart';
import 'package:repodi/view/display_user_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/addUser': (context) => AddUserView(),
        '/displayUser': (context) => const DisplayUserView(),
      },
    );
  }
}
