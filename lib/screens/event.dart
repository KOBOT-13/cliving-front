import 'package:table_calendar/table_calendar.dart';
import 'dart:collection';

class Event {
  String place;
  String color;

  Event({this.place = '암장을 입력해주세요', required this.color});

  @override
  String toString() => '$place\n$color';
}

final event = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_eventSource);

final _eventSource = {
  DateTime(2024, 4, 3): [Event(place: '타잔 101 클라이밍', color: 'red')]
};

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}