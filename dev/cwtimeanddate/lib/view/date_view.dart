import 'package:flutter/material.dart';

class DateView extends StatefulWidget {
  const DateView({super.key});

  @override
  _DateViewState createState() => _DateViewState();
}

class _DateViewState extends State<DateView> {
  DateTime? date;

  @override
  void initState() {
    super.initState();
    // Initialize the date variable with a default value
    date = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Date '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Date: ${date!.day}/${date!.month}/${date!.year}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date!,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );
                if (newDate != null) {
                  setState(() {
                    date = newDate;
                  });
                }
              },
              child: const Text('Change Date'),
            ),
          ],
        ),
      ),
    );
  }
}
