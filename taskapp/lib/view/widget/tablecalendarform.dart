import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class TableCalendarForm extends StatefulWidget {
  const TableCalendarForm({super.key});

  @override
  State<TableCalendarForm> createState() => _TableCalendarFormState();
}

class _TableCalendarFormState extends State<TableCalendarForm> {
  @override
  Widget build(BuildContext context) {
    DateTime? selectedDay;
    DateTime focusedDay = DateTime.now();
    CalendarFormat calendarFormat = CalendarFormat.twoWeeks;
    return TableCalendar(
      calendarFormat: calendarFormat,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      availableGestures: AvailableGestures.all,
      selectedDayPredicate: (day) {
        // Use `selectedDayPredicate` to determine which day is currently selected.
        // If this returns true, then `day` will be marked as selected.

        // Using `isSameDay` is recommended to disregard
        // the time-part of compared DateTime objects.
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(selectedDay, selectedDay)) {
          // Call `setState()` when updating the selected day
          setState(() {
            selectedDay = selectedDay;
            focusedDay = focusedDay;
          });
        }
      },
    );
  }
}
