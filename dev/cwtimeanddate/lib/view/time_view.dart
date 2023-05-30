import 'package:flutter/material.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key});

  @override
  _TimeViewState createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  TimeOfDay? time;

  @override
  void initState() {
    super.initState();
    // Initialize the time variable with a default value
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Time '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Time: ${time!.hour}:${time!.minute}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time!,
                );
                if (newTime != null) {
                  setState(() {
                    time = newTime;
                  });
                }
              },
              child: const Text('Change Time'),
            ),
          ],
        ),
      ),
    );
  }
}
