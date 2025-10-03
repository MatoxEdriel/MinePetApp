import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {


  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDay;

  //Ejemplo estandar
  final Map<DateTime, List<String>> _events = {
    DateTime.utc(2025, 10, 15): ['Vacuna contra la rabia'],
    DateTime.utc(2025, 10, 12): ['Vacuna contra la no se '],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calendar of Vacunation")),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),

            eventLoader: (day) {
              final dateOnly = DateTime.utc(day.year, day.month, day.day);
              return _events[dateOnly] ?? [];
            },

            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },

         
           

          ),
        ],
      ),
    );
  }
}
