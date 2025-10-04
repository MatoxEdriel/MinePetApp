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
    DateTime.utc(2025, 10, 12): ['Vacuna contra la no se'],
    DateTime.utc(2025, 10, 30): ['Vacuna no se'],
    DateTime.utc(2025, 10, 21): ['Vacuna no se'],
    DateTime.utc(2025, 10, 22): ['Vacuna no se'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                
                shouldFillViewport: true,
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, day, events) {
                    if (events.isNotEmpty) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.softRed,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.pets,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),

                availableCalendarFormats: const {CalendarFormat.month: 'Month'},

                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),

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
          ),
        ],
      ),
    );
  }
}
