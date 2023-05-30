import 'package:cwtimeanddate/view/dashboard_view.dart';
import 'package:cwtimeanddate/view/date_view.dart';
import 'package:cwtimeanddate/view/time_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Date & Time',
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/timeRoute': (context) => const TimeView(),
        '/dateRoute': (context) => const DateView(),
      },
    ),
  );
}
