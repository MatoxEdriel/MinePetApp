import 'package:flutter/material.dart';
import 'package:minepet/src/core/theme/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDay;

  
  
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
          Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.pastelWhite,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: AppColors.darkMauve,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: TableCalendar(
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: AppColors.pastelPink,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                ),
                selectedTextStyle: const TextStyle(
                  color: AppColors.darkMauve,
                  fontWeight: FontWeight.bold,
                ),
                todayDecoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryFixed,
                  shape: BoxShape.circle,
                ),
                todayTextStyle: const TextStyle(
                  color: AppColors.darkMauve,
                  fontWeight: FontWeight.bold,
                ),
              ),

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
          ),
        ],
      ),
    );
  }
}
