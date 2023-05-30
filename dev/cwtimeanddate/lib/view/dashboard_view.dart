import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
    final DateFormat timeFormat = DateFormat('HH:mm');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time'),
      ),
      body: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/dateRoute');
              },
              child: const Text('Change Date'),
            ),
            Text(dateFormat.format(now)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/timeRoute');
              },
              child: const Text('Change Time '),
            ),
            Text(timeFormat.format(now)),
          ],
        ),
      ),
    );
  }
}
