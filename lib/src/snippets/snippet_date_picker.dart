import 'package:flutter/material.dart';

class SnippetDatePicker extends StatefulWidget {
  const SnippetDatePicker({Key? key}) : super(key: key);

  @override
  _SnippetDatePickerState createState() => _SnippetDatePickerState();
}

class _SnippetDatePickerState extends State<SnippetDatePicker> {
  DateTime _selectedDate = DateTime.now();

  bool _decideWhichDayToEnable(DateTime day) {
    if (day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 10)))) {
      return true;
    }
    return false;
  }

  Future<DateTime?> buildMaterialDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      selectableDayPredicate: _decideWhichDayToEnable,
      helpText: 'Select booking date',
      cancelText: 'Not now',
      confirmText: 'Book',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
      fieldLabelText: 'Booking date',
      fieldHintText: 'Month/Date/Year',
      builder: (context, child) {
        return child!;
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${_selectedDate.toLocal()}'.split(' ')[0],
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => buildMaterialDatePicker(context),
              child: const Text(
                'Select date',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
